/******************************************************************************
 * SW mode vs HW offload + SW mode benchmark
 *
 * - Timer0 : measurement free-run
 * - Timer1 : SW-mode periodic tick interrupt
 * - RTOS IP: HW scheduler interrupt
 *
 * Compare over the SAME logical time window:
 *   TEST_WINDOW_TICKS ticks
 *
 * Assumptions:
 * - AXI Timer clock = XPAR_XTMRCTR_0_CLOCK_FREQUENCY
 * - RTOS IP direct mapping register map from myip_RTOS_slave_lite_v2_1_S00_AXI
 ******************************************************************************/

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_exception.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "sleep.h"
#include <stdint.h>

/* =========================================================
 * User config
 * ========================================================= */
#define N_TASKS            16
#define TICK_HZ            1000u          /* 1ms tick */
#define TEST_WINDOW_TICKS  1000u          /* compare over 1000 logical ticks */

/* Adjust to your XIntc concat mapping */
#define RTOS_VEC_ID        0
#define TMR_VEC_ID         2

/* XIntc device id:
 * If your BSP has no DEVICE_ID macro, 0 often works when only one INTC exists.
 */
#define INTC_DEVICE_ID     XPAR_XINTC_0_BASEADDR

/* =========================================================
 * AXI Timer / RTOS base
 * ========================================================= */
#define XTMR_BASE          XPAR_XTMRCTR_0_BASEADDR
#define XTMR_CLK_HZ        XPAR_XTMRCTR_0_CLOCK_FREQUENCY
#define RTOS_BASE          XPAR_MYIP_RTOS_0_BASEADDR

/* =========================================================
 * RTOS direct-mapping register map
 * ========================================================= */
#define RTOS_CTRL           0x00
#define RTOS_STATUS         0x04
#define RTOS_PRESC          0x08
#define RTOS_NOW_TICK       0x0C
#define RTOS_READY          0x10
#define RTOS_BLOCKED        0x14
#define RTOS_NEXT_TASK_ID   0x18
#define RTOS_READY_CLEAR    0x1C
#define RTOS_TASK_EN        0x20
#define RTOS_PERIODIC_EN    0x24

#define RTOS_TASK_BASE(i)   (0x40u + ((i) * 0x0Cu))
#define RTOS_NEXT_REL(i)    (RTOS_TASK_BASE(i) + 0x00u)
#define RTOS_PERIOD(i)      (RTOS_TASK_BASE(i) + 0x04u)
#define RTOS_WAKE_TICK(i)   (RTOS_TASK_BASE(i) + 0x08u)

/* CTRL bits */
#define RTOS_CTRL_EN        (1u << 0)
#define RTOS_CTRL_IRQ_EN    (1u << 1)

/* =========================================================
 * Globals
 * ========================================================= */
static XIntc   Intc;
static XTmrCtr Tmr;

/* ---------------- SW mode task model ---------------- */
typedef struct {
    uint32_t next_release;
    uint32_t period;
    uint8_t  enabled;
    uint8_t  ready;
    uint8_t  blocked;
} sw_task_t;

static sw_task_t sw_tasks[N_TASKS];
static volatile uint32_t sw_now_tick = 0;

/* ---------------- Stats ---------------- */
typedef struct {
    volatile uint32_t min;
    volatile uint32_t max;
    volatile uint64_t sum;
    volatile uint32_t samples;     /* number of ISR entries */
} stat_t;

static stat_t sw_stat = { .min = 0xFFFFFFFFu, .max = 0, .sum = 0, .samples = 0 };
static stat_t hw_stat = { .min = 0xFFFFFFFFu, .max = 0, .sum = 0, .samples = 0 };

static volatile uint8_t sw_done = 0;
static volatile uint8_t hw_done = 0;

/* =========================================================
 * Measurement helpers
 * Timer0 is configured as down-counter free-run
 * ========================================================= */
static inline uint32_t meas_start(void)
{
    return XTmrCtr_GetValue(&Tmr, 0);
}

static inline uint32_t meas_delta(uint32_t start, uint32_t end)
{
    return (uint32_t)(start - end);
}

static inline void stat_reset(stat_t *s)
{
    s->min = 0xFFFFFFFFu;
    s->max = 0;
    s->sum = 0;
    s->samples = 0;
}

static inline void stat_update(stat_t *s, uint32_t d)
{
    if (d < s->min) s->min = d;
    if (d > s->max) s->max = d;
    s->sum += d;
    s->samples++;
}

/* =========================================================
 * AXI Timer setup
 * - Timer0: measurement free-run down counter
 * - Timer1: SW periodic tick interrupt
 * ========================================================= */
static int setup_axi_timer(void)
{
    XTmrCtr_Config *cfg = XTmrCtr_LookupConfig(XTMR_BASE);
    if (!cfg) return XST_FAILURE;

    XTmrCtr_CfgInitialize(&Tmr, cfg, XTMR_BASE);

    int st = XTmrCtr_SelfTest(&Tmr, 0);
    if (st != XST_SUCCESS) return st;

    /* Timer0 = measurement free-run */
    XTmrCtr_SetResetValue(&Tmr, 0, 0xFFFFFFFFu);
    XTmrCtr_SetOptions(&Tmr, 0, XTC_DOWN_COUNT_OPTION | XTC_AUTO_RELOAD_OPTION);
    XTmrCtr_Start(&Tmr, 0);

    /* Timer1 = SW mode periodic tick */
    {
        uint32_t ticks_per_tick = XTMR_CLK_HZ / TICK_HZ; /* 100MHz / 1000 = 100000 */
        XTmrCtr_SetResetValue(&Tmr, 1, ticks_per_tick);
        XTmrCtr_SetOptions(&Tmr, 1,
                           XTC_INT_MODE_OPTION |
                           XTC_AUTO_RELOAD_OPTION |
                           XTC_DOWN_COUNT_OPTION |
                           XTC_ENABLE_ALL_OPTION);
    }

    return XST_SUCCESS;
}

/* =========================================================
 * XIntc setup
 * ========================================================= */
static int setup_interrupts(void);

static void sw_tick_callback(void *CallBackRef, u8 TmrNum);
static void hw_sched_isr(void *Ref);

static int setup_interrupts(void)
{
    int st;

    st = XIntc_Initialize(&Intc, INTC_DEVICE_ID);
    if (st != XST_SUCCESS) return st;

    /* Timer interrupt -> XTmrCtr driver ISR */
    XTmrCtr_SetHandler(&Tmr, sw_tick_callback, &Tmr);
    st = XIntc_Connect(&Intc, TMR_VEC_ID,
                       (XInterruptHandler)XTmrCtr_InterruptHandler,
                       &Tmr);
    if (st != XST_SUCCESS) return st;

    /* RTOS scheduler IRQ */
    st = XIntc_Connect(&Intc, RTOS_VEC_ID,
                       (XInterruptHandler)hw_sched_isr,
                       NULL);
    if (st != XST_SUCCESS) return st;

    XIntc_Enable(&Intc, TMR_VEC_ID);
    XIntc_Enable(&Intc, RTOS_VEC_ID);

    st = XIntc_Start(&Intc, XIN_REAL_MODE);
    if (st != XST_SUCCESS) return st;

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 &Intc);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

/* =========================================================
 * Only-SW scheduler model
 * ========================================================= */
static void sw_sched_init(void)
{
    sw_now_tick = 0;
    sw_done = 0;
    stat_reset(&sw_stat);

    for (int i = 0; i < N_TASKS; i++) {
        sw_tasks[i].enabled = 1;
        sw_tasks[i].ready = 0;
        sw_tasks[i].blocked = 1;
        sw_tasks[i].period = (uint32_t)((i + 1) * 5u);   /* 5,10,15,...,80 tick */
        sw_tasks[i].next_release = sw_tasks[i].period;
    }
}

static inline void sw_scheduler_tick(void)
{
    sw_now_tick++;

    for (int i = 0; i < N_TASKS; i++) {
        if (!sw_tasks[i].enabled) continue;

        if (sw_tasks[i].blocked && (sw_now_tick >= sw_tasks[i].next_release)) {
            sw_tasks[i].blocked = 0;
            sw_tasks[i].ready = 1;
        }
    }
}

static inline uint8_t sw_pick_next_task(void)
{
    for (int i = 0; i < N_TASKS; i++) {
        if (sw_tasks[i].ready) return (uint8_t)i;
    }
    return 0xFFu;
}

static inline void sw_consume_task(uint8_t id)
{
    if (id >= N_TASKS) return;

    sw_tasks[id].ready = 0;
    sw_tasks[id].blocked = 1;
    sw_tasks[id].next_release += sw_tasks[id].period;
}

/* Called by XTmrCtr_InterruptHandler on Timer1 interrupt */
static void sw_tick_callback(void *CallBackRef, u8 TmrNum)
{
    (void)CallBackRef;
    (void)TmrNum;

    if (sw_done) return;

    uint32_t t0 = meas_start();

    sw_scheduler_tick();

    {
        uint8_t next = sw_pick_next_task();
        if (next != 0xFFu) {
            sw_consume_task(next);
        }
    }

    {
        uint32_t t1 = XTmrCtr_GetValue(&Tmr, 0);
        stat_update(&sw_stat, meas_delta(t0, t1));
    }

    if (sw_now_tick >= TEST_WINDOW_TICKS) {
        sw_done = 1;
        XTmrCtr_Stop(&Tmr, 1);
    }
}

/* =========================================================
 * HW offload + SW
 * ========================================================= */
static void hw_sched_init(void)
{
    hw_done = 0;
    stat_reset(&hw_stat);

    /* disable while programming */
    Xil_Out32(RTOS_BASE + RTOS_CTRL, 0x0);

    /* 1ms tick @100MHz */
    Xil_Out32(RTOS_BASE + RTOS_PRESC, XTMR_CLK_HZ / TICK_HZ);

    /* enable all tasks / periodic */
    {
        uint32_t task_en = 0;
        uint32_t periodic_en = 0;
        for (int i = 0; i < N_TASKS; i++) {
            task_en     |= (1u << i);
            periodic_en |= (1u << i);
        }
        Xil_Out32(RTOS_BASE + RTOS_TASK_EN, task_en);
        Xil_Out32(RTOS_BASE + RTOS_PERIODIC_EN, periodic_en);
    }

    /* period / next_release 설정 */
    for (int i = 0; i < N_TASKS; i++) {
        uint32_t period = (uint32_t)((i + 1) * 5u);
        Xil_Out32(RTOS_BASE + RTOS_PERIOD(i), period);
        Xil_Out32(RTOS_BASE + RTOS_NEXT_REL(i), period);
    }

    /* 먼저 scheduler enable */
    Xil_Out32(RTOS_BASE + RTOS_CTRL, RTOS_CTRL_EN | RTOS_CTRL_IRQ_EN);

    /* 그 다음 WAKE_TICK write로 block_set pulse 발생 */
    for (int i = 0; i < N_TASKS; i++) {
        uint32_t period = (uint32_t)((i + 1) * 5u);
        Xil_Out32(RTOS_BASE + RTOS_WAKE_TICK(i), period);
    }

    xil_printf("HW init: READY=0x%08x BLOCKED=0x%08x NOW=%u STATUS=0x%08x\r\n",
               Xil_In32(RTOS_BASE + RTOS_READY),
               Xil_In32(RTOS_BASE + RTOS_BLOCKED),
               Xil_In32(RTOS_BASE + RTOS_NOW_TICK),
               Xil_In32(RTOS_BASE + RTOS_STATUS));
}

static inline void hw_consume_task(uint8_t id)
{
    Xil_Out32(RTOS_BASE + RTOS_READY_CLEAR, (1u << id));
}

/* Direct IRQ handler for RTOS scheduler IP */
static void hw_sched_isr(void *Ref)
{
    (void)Ref;

    if (hw_done) return;

    uint32_t t0 = meas_start();

    {
        uint32_t ready = Xil_In32(RTOS_BASE + RTOS_READY);
        if (ready != 0u) {
            uint8_t next = (uint8_t)(Xil_In32(RTOS_BASE + RTOS_NEXT_TASK_ID) & 0xFu);
            hw_consume_task(next);
        }
    }

    {
        uint32_t t1 = XTmrCtr_GetValue(&Tmr, 0);
        stat_update(&hw_stat, meas_delta(t0, t1));
    }
}

/* =========================================================
 * Mode control
 * ========================================================= */
static void disable_hw_sched(void)
{
    Xil_Out32(RTOS_BASE + RTOS_CTRL, 0x0);
}

static void run_sw_mode(void)
{
    xil_printf("\r\n=== MODE: ONLY SW ===\r\n");

    disable_hw_sched();
    sw_sched_init();

    XTmrCtr_Reset(&Tmr, 1);
    XTmrCtr_Start(&Tmr, 1);

    while (!sw_done) {
        /* wait */
    }
}

static void run_hw_mode(void)
{
    xil_printf("\r\n=== MODE: HW OFFLOAD + SW ===\r\n");

    XTmrCtr_Stop(&Tmr, 1); /* no SW periodic interrupt */
    hw_sched_init();

    /* Wait until HW logical time reaches test window */
    while (Xil_In32(RTOS_BASE + RTOS_NOW_TICK) < TEST_WINDOW_TICKS) {
        /* wait */
    }

    hw_done = 1;
    disable_hw_sched();

    /* small drain time in case one last IRQ is pending */
    usleep(1000);
}

/* =========================================================
 * Print
 * ========================================================= */
static void print_stat(const char *name, const stat_t *s)
{
    uint32_t avg = (s->samples > 0) ? (uint32_t)(s->sum / s->samples) : 0;
    xil_printf("%s: samples=%u min=%u avg=%u max=%u total=%llu\r\n",
               name,
               s->samples,
               s->min,
               avg,
               s->max,
               (unsigned long long)s->sum);
}

/* =========================================================
 * Main
 * ========================================================= */
int main(void)
{
    init_platform();
    xil_printf("boot\r\n");

    if (setup_axi_timer() != XST_SUCCESS) {
        xil_printf("axi timer init fail\r\n");
        while (1);
    }

    if (setup_interrupts() != XST_SUCCESS) {
        xil_printf("intc setup fail\r\n");
        while (1);
    }

    xil_printf("XTMR_CLK_HZ=%u, TICK_HZ=%u, WINDOW=%u ticks\r\n",
               (unsigned)XTMR_CLK_HZ,
               (unsigned)TICK_HZ,
               (unsigned)TEST_WINDOW_TICKS);

    run_sw_mode();
    print_stat("[ONLY SW scheduler body]", &sw_stat);
    xil_printf("SW logical ticks=%u\r\n", sw_now_tick);

    run_hw_mode();
    print_stat("[HW offload ISR body]", &hw_stat);
    xil_printf("HW now_tick=%u\r\n", Xil_In32(RTOS_BASE + RTOS_NOW_TICK));

    xil_printf("\r\n=== SUMMARY ===\r\n");
    xil_printf("SW total cycles  = %llu\r\n", (unsigned long long)sw_stat.sum);
    xil_printf("HW total cycles  = %llu\r\n", (unsigned long long)hw_stat.sum);
    xil_printf("SW ISR count     = %u\r\n", sw_stat.samples);
    xil_printf("HW IRQ count     = %u\r\n", hw_stat.samples);

    while (1) {
        sleep(1);
    }

    return 0;
}