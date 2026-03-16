#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "npu_weights.h"
#include "test_image.h"


#define PRIV_TIMER_COUNT  0xF8F00604
#define PRIV_TIMER_CTRL   0xF8F00608
#define PRIV_TIMER_LOAD   0xF8F00600


#define NPU_BASE        XPAR_MYIP_NPU_OCR_0_BASEADDR
#define DMA_BASE        XPAR_AXI_DMA_0_BASEADDR
#define WEIGHT_DDR_ADDR 0x10000000

#define REG_CTRL   0x00
#define REG_STATUS 0x04
#define REG_IMG    0x08

static int get_state(u32 st)  { return (st >> 2) & 0x0F; }
static int get_layer(u32 st)  { return (st >> 6) & 0x0F; }
static int get_tready(u32 st) { return (st >> 10) & 0x01; }

static const int weight_layers[10][4] = {
    { 0,   1,   32, 1},
    { 1,  32,   64, 1},
    { 2,  64,  128, 1},
    { 3, 128,  128, 1},
    { 4, 128,  128, 1},
    { 5, 512,  256, 0},
    { 6, 256,  128, 0},
    { 7, 256,   19, 0},
    { 9, 256,   21, 0},
    {11, 128,   28, 0},
};

static u32 layer_offset[10];
static int layer_per_ch[10];

void calc_layer_offsets(void)
{
    u32 offset = 0;
    for (int i = 0; i < 10; i++) {
        int c_in    = weight_layers[i][1];
        int c_out   = weight_layers[i][2];
        int is_conv = weight_layers[i][3];
        int per_ch  = is_conv ? (c_in * 9 + 1) : (c_in + 1);
        layer_offset[i] = offset;
        layer_per_ch[i] = per_ch;
        offset += (u32)per_ch * c_out;
    }
    xil_printf("Total weight bytes: %d\r\n", (int)offset);
}

void dma_reset_run(void)
{
    Xil_Out32(DMA_BASE + 0x00, 0x04);
    for (volatile int d = 0; d < 100000; d++);
    Xil_Out32(DMA_BASE + 0x00, 0x01);
    for (volatile int d = 0; d < 10000; d++);
}

/*
 * Send one channel with retry.
 * If DMA error occurs AND NPU still has tready=1 (data didn't arrive),
 * reset DMA and resend. Max 5 attempts.
 */
void send_one_channel(u32 addr, u32 len)
{
    for (int attempt = 0; attempt < 5; attempt++) {
        /* Wait for NPU tready */
        for (int tw = 0; tw < 50000000; tw++) {
            if (get_tready(Xil_In32(NPU_BASE + REG_STATUS)))
                break;
        }

        /* Send */
        Xil_Out32(DMA_BASE + 0x18, addr);
        Xil_Out32(DMA_BASE + 0x28, len);

        /* Wait for DMA completion */
        u32 sr;
        for (int t = 0; t < 50000000; t++) {
            sr = Xil_In32(DMA_BASE + 0x04);
            if (sr & 0x1002) break;
        }

        /* Check: did NPU actually receive the data?
         * Wait a short time for NPU to transition out of S_DDR_LOAD */
        for (volatile int d = 0; d < 5000; d++);

        u32 npu_st = Xil_In32(NPU_BASE + REG_STATUS);
        int tready = get_tready(npu_st);
        int state  = get_state(npu_st);

        /* If NPU left S_DDR_LOAD (state != 3) or tready dropped, data arrived */
        if (state != 3 || !tready) {
            /* DMA may have error flag set, clear it for next transfer */
            if (sr & 0x1000)
                dma_reset_run();
            return;
        }

        /* NPU still in S_DDR_LOAD with tready=1 -> data didn't arrive
         * But for FC layers, NPU might have already processed and returned to
         * S_DDR_LOAD with tready=1 for next channel. Check if this is possible
         * by seeing if state went through compute and came back.
         * We can't distinguish this case easily, so just check if DMA had error. */
        if (!(sr & 0x1000)) {
            /* DMA completed without error but NPU still tready=1.
             * This means NPU processed it and came back fast (FC case).
             * Data was received. */
            return;
        }

        /* DMA error AND NPU still waiting -> data lost, retry */
        dma_reset_run();
    }
}

static int is_argmax_layer(int npu_layer)
{
    return (npu_layer == 8 || npu_layer == 10 || npu_layer == 12);
}

static int find_weight_index(int npu_layer)
{
    for (int i = 0; i < 10; i++) {
        if (weight_layers[i][0] == npu_layer)
            return i;
    }
    return -1;
}

int main()
{
    init_platform();
    xil_printf("=== NPU Hangul OCR ===\r\n");

    calc_layer_offsets();

    /* Load weights to DDR */
    u8 *dst = (u8 *)WEIGHT_DDR_ADDR;
    for (u32 i = 0; i < TOTAL_WEIGHT_SIZE; i++)
        dst[i] = npu_weights[i];
    Xil_DCacheFlushRange(WEIGHT_DDR_ADDR, TOTAL_WEIGHT_SIZE);
    xil_printf("Weights loaded (%d bytes)\r\n", TOTAL_WEIGHT_SIZE);

    /* Send image */
    Xil_Out32(NPU_BASE + REG_CTRL, 0x01);
    for (int i = 0; i < 4096; i++)
        Xil_Out32(NPU_BASE + REG_IMG, (u32)(u8)test_image[i]);
    xil_printf("Image sent\r\n");


    /* Start inference */
    Xil_Out32(NPU_BASE + REG_CTRL, 0x02);
    xil_printf("Inference started\r\n");

    /* Timer init */
    Xil_Out32(PRIV_TIMER_LOAD, 0xFFFFFFFF);
    Xil_Out32(PRIV_TIMER_CTRL, 0x03);
    u32 t_start = Xil_In32(PRIV_TIMER_COUNT);

    /* Process each NPU layer 0~12 */
    for (int npu_layer = 0; npu_layer <= 12; npu_layer++) {

        xil_printf("Waiting npu_layer=%d ... ", npu_layer);

        int timeout = 0;
        while (1) {
            u32 st = Xil_In32(NPU_BASE + REG_STATUS);

            if ((st >> 1) & 0x01) {
                xil_printf("NPU DONE!\r\n");
                goto read_result;
            }

            if (is_argmax_layer(npu_layer)) {
                int layer = get_layer(st);
                int state = get_state(st);
                if (layer > npu_layer || (layer == npu_layer && state > 3))
                    break;
            } else {
                if (get_state(st) == 3 && get_layer(st) == npu_layer && get_tready(st))
                    break;
            }

            if (++timeout > 300000000) {
                xil_printf("TIMEOUT (STATUS=0x%08X)\r\n",
                    Xil_In32(NPU_BASE + REG_STATUS));
                goto read_result;
            }
            if (timeout % 50000000 == 0)
                xil_printf("(0x%08X) ", Xil_In32(NPU_BASE + REG_STATUS));
        }

        if (is_argmax_layer(npu_layer)) {
            xil_printf("ARGMAX skip\r\n");
            continue;
        }

        int wi     = find_weight_index(npu_layer);
        int c_out  = weight_layers[wi][2];
        int per_ch = layer_per_ch[wi];
        u32 base   = WEIGHT_DDR_ADDR + layer_offset[wi];

        xil_printf("ready\r\n");
        xil_printf("  weight[%d] c_out=%d per_ch=%d: ", wi, c_out, per_ch);

        /* Flush cache for entire layer */
        Xil_DCacheFlushRange(base, (u32)per_ch * c_out);

        /* Reset DMA once before layer */
        dma_reset_run();

        for (int ch = 0; ch < c_out; ch++) {
            send_one_channel(base + (u32)ch * per_ch, per_ch);

            if ((ch + 1) % 32 == 0)
                xil_printf("%d ", ch + 1);
        }
        xil_printf("OK\r\n");
    }

    read_result:
    xil_printf("Waiting for result...\r\n");
    for (int t = 0; t < 300000000; t++) {
        u32 st = Xil_In32(NPU_BASE + REG_STATUS);
        if ((st >> 1) & 0x01)
            break;
        if (t == 299999999)
            xil_printf("Result TIMEOUT (STATUS=0x%08X)\r\n", st);
    }

    u32 cho  = Xil_In32(NPU_BASE + 0x0C);
    u32 jung = Xil_In32(NPU_BASE + 0x10);
    u32 jong = Xil_In32(NPU_BASE + 0x14);

    xil_printf("================================\r\n");
    xil_printf("  Predicted cho  = %d\r\n", cho);
    xil_printf("  Predicted jung = %d\r\n", jung);
    xil_printf("  Predicted jong = %d\r\n", jong);
    xil_printf("================================\r\n");

    u32 t_end = Xil_In32(PRIV_TIMER_COUNT);
    u32 elapsed = t_start - t_end;
    u32 ms = elapsed / 333333;
    xil_printf("  Inference time: %d ms\r\n", ms);

    cleanup_platform();
    return 0;
}
