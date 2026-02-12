#pragma once
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct tcb {
    uint32_t *sp;      // MUST be first
    uint32_t wake;
    uint8_t  prio;
    uint8_t  state;    // 0 READY, 1 BLOCKED
    uint16_t _pad;
} tcb_t;

extern volatile uint32_t g_tick;
extern volatile int g_need_switch;
extern volatile tcb_t *pxCurrentTCB;
extern volatile uint32_t g_sched_ctx[13]; // ra + s0..s11
extern volatile uint32_t *g_sched_sp;


void rtos_init(void);

tcb_t* rtos_create_task(void (*entry)(void),
                        uint8_t prio,
                        uint32_t *stack,
                        uint32_t stack_words);

void rtos_start_scheduler(void);

void rtos_tick_isr(void);                 // call from tick IRQ
void rtos_delay_until(uint32_t *next, uint32_t period_ticks);
static inline void rtos_yield_if_needed(void){
    if (g_need_switch) { g_need_switch = 0; extern void rtos_yield(void); rtos_yield(); }
}

tcb_t* rtos_pick_next(void);

// asm
void rtos_yield(void);
void rtos_switch_to(tcb_t *next);

#ifdef __cplusplus
}
#endif
