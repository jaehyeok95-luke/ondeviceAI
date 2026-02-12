#include "rtos_min.h"

#define MAX_TASKS 8
#define MAX_PRIO  8

volatile uint32_t g_tick = 0;
volatile int g_need_switch = 0;

volatile tcb_t *pxCurrentTCB = 0;
volatile uint32_t *g_sched_sp = 0;
volatile uint32_t g_sched_ctx[13] = {0}; // ra + s0..s11


static tcb_t tcbs[MAX_TASKS];
static int tcb_used = 0;

// 데모용 단순화: prio 당 1개 task
static tcb_t *ready_task[MAX_PRIO];
static uint32_t ready_bm = 0;

// forward: per-task bootstrap wrappers (no args)
static void task_bootstrap_0(void);
static void task_bootstrap_1(void);
static void task_bootstrap_2(void);
static void task_bootstrap_3(void);
static void task_bootstrap_4(void);
static void task_bootstrap_5(void);
static void task_bootstrap_6(void);
static void task_bootstrap_7(void);

// user entry table
static void (*g_entry[MAX_TASKS])(void) = {0};

// frame size must match rtos_ctx.S
#define FR_WORDS (52/4)

static inline void ready_add(tcb_t *t){
    ready_task[t->prio] = t;
    ready_bm |= (1u << t->prio);
    t->state = 0;
}
static inline void ready_remove(tcb_t *t){
    if (ready_task[t->prio] == t) ready_task[t->prio] = 0;
    ready_bm &= ~(1u << t->prio);
}

static inline int highest_ready_prio(void){
    for(int p=MAX_PRIO-1; p>=0; --p){
        if (ready_bm & (1u<<p)) return p;
    }
    return -1;
}

tcb_t* rtos_pick_next(void){
    int p = highest_ready_prio();
    if (p < 0) return (tcb_t*)pxCurrentTCB;
    return ready_task[p];
}

void rtos_init(void){
    g_tick = 0;
    g_need_switch = 0;
    pxCurrentTCB = 0;
    g_sched_sp = 0;

    tcb_used = 0;
    ready_bm = 0;
    for(int i=0;i<MAX_PRIO;i++) ready_task[i]=0;
    for(int i=0;i<MAX_TASKS;i++) g_entry[i]=0;
}

/* ---- bootstrap dispatcher ---- */
static void task_boot_dispatch(int idx){
    if (idx < 0 || idx >= MAX_TASKS || g_entry[idx] == 0) while(1){}
    g_entry[idx]();          // run forever
    while(1){ rtos_yield(); } // if returns, yield forever
}

static void task_bootstrap_0(void){ task_boot_dispatch(0); }
static void task_bootstrap_1(void){ task_boot_dispatch(1); }
static void task_bootstrap_2(void){ task_boot_dispatch(2); }
static void task_bootstrap_3(void){ task_boot_dispatch(3); }
static void task_bootstrap_4(void){ task_boot_dispatch(4); }
static void task_bootstrap_5(void){ task_boot_dispatch(5); }
static void task_bootstrap_6(void){ task_boot_dispatch(6); }
static void task_bootstrap_7(void){ task_boot_dispatch(7); }

static void (*bootstrap_table[MAX_TASKS])(void) = {
    task_bootstrap_0, task_bootstrap_1, task_bootstrap_2, task_bootstrap_3,
    task_bootstrap_4, task_bootstrap_5, task_bootstrap_6, task_bootstrap_7
};

static uint32_t* align16(uint32_t *p){
    return (uint32_t*)(((uintptr_t)p) & ~((uintptr_t)0xFu));
}

tcb_t* rtos_create_task(void (*entry)(void),
                        uint8_t prio,
                        uint32_t *stack,
                        uint32_t stack_words)
{
    if (tcb_used >= MAX_TASKS) return 0;
    if (prio >= MAX_PRIO) return 0;

    int idx = tcb_used++;
    tcb_t *t = &tcbs[idx];

    t->prio = prio;
    t->state = 0;
    t->wake = 0;

    g_entry[idx] = entry;

    uint32_t *sp = stack + stack_words;
    sp = align16(sp);

    // allocate initial frame (ra+s0~s11), zero it
    sp -= FR_WORDS;
    for (int i=0;i<FR_WORDS;i++) sp[i] = 0;

    // frame[0] == saved ra; rtos_switch_to restores ra then "ret" into it
    sp[0] = (uint32_t)bootstrap_table[idx];

    t->sp = sp;

    ready_add(t);
    return t;
}

void rtos_tick_isr(void){
    g_tick++;

    // unblock
    for(int i=0;i<tcb_used;i++){
        tcb_t *t = &tcbs[i];
        if (t->state == 1) {
            if ((int32_t)(g_tick - t->wake) >= 0) {
                ready_add(t);
            }
        }
    }

    // preempt request (cooperative: just set flag)
    tcb_t *next = rtos_pick_next();
    if ((volatile tcb_t*)next != pxCurrentTCB) {
        g_need_switch = 1;
    }
}

void rtos_delay_until(uint32_t *next, uint32_t period_ticks){
    *next += period_ticks;

    tcb_t *t = (tcb_t*)pxCurrentTCB;
    t->wake = *next;
    t->state = 1;
    ready_remove(t);

    g_need_switch = 1;
    rtos_yield();  // immediate cooperative switch
}

void rtos_start_scheduler(void){
    tcb_t *next = rtos_pick_next();
    if (!next) while(1){}

    while (1) {
        rtos_switch_to(next);
        // task가 yield하면 여기로 복귀
        next = rtos_pick_next();
        g_need_switch = 0;
    }
}

