#include <stdint.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "xintc.h"
#include "rtos_min.h"

/* ================= HW BASE ================= */
#define RTOS_BASE   XPAR_MYIP_RTOS_0_BASEADDR
#define IRQC_BASE   XPAR_MYIP_IRQ_CNTR_0_BASEADDR

#ifdef XPAR_XINTC_0_DEVICE_ID
#define INTC_DEV_ID XPAR_XINTC_0_DEVICE_ID
#else
#define INTC_DEV_ID XPAR_XINTC_0_BASEADDR
#endif

#define IRQC_VEC_ID 0

/* ================= RTOS IP ================= */
#define RTOS_CTRL   (RTOS_BASE + 0x00)
#define RTOS_PERIOD (RTOS_BASE + 0x04)
#define RTOS_STATUS (RTOS_BASE + 0x08)

#define RTOS_EN_BIT       (1u<<0)
#define RTOS_IRQ_EN_BIT   (1u<<1)
#define RTOS_CLR_CNT_BIT  (1u<<2)
#define RTOS_CLR_PEND_BIT (1u<<3)

#define RTOS_PRESC(x) (((uint32_t)(x) & 0xFFFFu) << 4)

/* ================= IRQC ================= */
#define IRQC_EN_REG     (IRQC_BASE + 0x00)
#define IRQC_PULSE_REG  (IRQC_BASE + 0x08)
#define IRQC_STATUS     (IRQC_BASE + 0x0C)

#define IRQC_VALID_MASK (0x80000000u)
#define IRQC_ID_MASK    (0x7u)
#define IRQC_ID_TICK    0

/* ================= MMIO ================= */
static inline void mmio_w(uint32_t a, uint32_t v)
{
    Xil_Out32(a, v);
}

static inline uint32_t mmio_r(uint32_t a)
{
    return Xil_In32(a);
}

static inline uint32_t irqc_status(void)
{
    return mmio_r(IRQC_STATUS);
}

static inline int irqc_valid(uint32_t st)
{
    return (st & IRQC_VALID_MASK) != 0;
}

static inline uint32_t irqc_id(uint32_t st)
{
    return st & IRQC_ID_MASK;
}

static inline void irqc_clear_id(uint32_t id)
{
    mmio_w(IRQC_PULSE_REG, 1u << (id & 7u));
}

/* ================= Interrupt Controller ================= */
static XIntc Intc;

/* ================= Demo Tasks ================= */
static volatile uint32_t fast_cnt = 0;
static volatile uint32_t slow_cnt = 0;

static void task_fast(void)
{
    uint32_t next = g_tick;

    while (1) {
        fast_cnt++;
        rtos_delay_until(&next, 10);   // 10ms
    }
}

static void task_slow(void)
{
    uint32_t next = g_tick;

    while (1) {
        slow_cnt++;
        rtos_delay_until(&next, 100);  // 100ms
    }
}

static void task_bg(void)
{
    uint32_t last = 0;

    while (1) {

        if ((g_tick - last) >= 1000) {
            last += 1000;

            xil_printf("1sec marker, tick=%u fast=%u slow=%u\r\n",
                       (unsigned long)g_tick,
                       (unsigned long)fast_cnt,
                       (unsigned long)slow_cnt);
        }

        rtos_yield_if_needed();
    }
}

/* ================= IRQ Handler ================= */
static void IrqHandler(void *ctx)
{
    (void)ctx;

    uint32_t st = irqc_status();
    if (!irqc_valid(st))
        return;

    uint32_t id = irqc_id(st);

    if (id == IRQC_ID_TICK) {

        rtos_tick_isr();

        /* RMW 방식으로 pending clear */
        uint32_t ctrl = mmio_r(RTOS_CTRL);
        mmio_w(RTOS_CTRL, ctrl | RTOS_CLR_PEND_BIT);
    }

    irqc_clear_id(id);
}

/* ================= Interrupt Setup ================= */
static int SetupInterrupts(void)
{
    int st;

    st = XIntc_Initialize(&Intc, INTC_DEV_ID);
    if (st != XST_SUCCESS)
        return st;

    st = XIntc_Connect(&Intc,
                       IRQC_VEC_ID,
                       (XInterruptHandler)IrqHandler,
                       NULL);
    if (st != XST_SUCCESS)
        return st;

    XIntc_Enable(&Intc, IRQC_VEC_ID);

    st = XIntc_Start(&Intc, XIN_REAL_MODE);
    if (st != XST_SUCCESS)
        return st;

    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(
        XIL_EXCEPTION_ID_INT,
        (Xil_ExceptionHandler)XIntc_InterruptHandler,
        &Intc);

    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

/* ================= HW Init ================= */
static void HwInit_IrqcEnableMask(uint8_t en_mask_7_1)
{
    mmio_w(IRQC_EN_REG, (uint32_t)(en_mask_7_1 & 0xFEu));
}

static void HwInit_RtosTick(uint32_t period_cycles)
{
    mmio_w(RTOS_PERIOD, period_cycles);

    uint32_t base = RTOS_PRESC(1) |
                    RTOS_EN_BIT |
                    RTOS_IRQ_EN_BIT;

    mmio_w(RTOS_CTRL,
           base | RTOS_CLR_CNT_BIT | RTOS_CLR_PEND_BIT);

    mmio_w(RTOS_CTRL, base);
}

/* ================= main ================= */
int main(void)
{
    xil_printf("\r\n[COOP RTOS] start\r\n");

    rtos_init();

    HwInit_IrqcEnableMask(0xFE);

    if (SetupInterrupts() != XST_SUCCESS) {
        xil_printf("SetupInterrupts failed\r\n");
        while (1);
    }

    const uint32_t CPU_HZ  = 100000000u;
    const uint32_t TICK_HZ = 1000u;

    HwInit_RtosTick(CPU_HZ / TICK_HZ);

#define STACK_WORDS 256

    static uint32_t stack_fast[STACK_WORDS] __attribute__((aligned(16)));
    static uint32_t stack_slow[STACK_WORDS] __attribute__((aligned(16)));
    static uint32_t stack_bg  [STACK_WORDS] __attribute__((aligned(16)));

    if (!rtos_create_task(task_bg,   0, stack_bg,   STACK_WORDS) ||
        !rtos_create_task(task_slow, 1, stack_slow, STACK_WORDS) ||
        !rtos_create_task(task_fast, 2, stack_fast, STACK_WORDS))
    {
        xil_printf("task create failed\r\n");
        while (1);
    }

    xil_printf("[COOP RTOS] scheduler start\r\n");

    rtos_start_scheduler();

    while (1) {}
}
