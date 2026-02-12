    .section .text
    .align 4

    .globl rtos_switch_to
    .globl rtos_yield

    .extern pxCurrentTCB
    .extern g_sched_sp
    .extern g_sched_ctx

/* task frame: ra + s0-s11 = 13 regs = 52 bytes */
    .equ FR_RA,   0
    .equ FR_S0,   4
    .equ FR_S1,   8
    .equ FR_S2,  12
    .equ FR_S3,  16
    .equ FR_S4,  20
    .equ FR_S5,  24
    .equ FR_S6,  28
    .equ FR_S7,  32
    .equ FR_S8,  36
    .equ FR_S9,  40
    .equ FR_S10, 44
    .equ FR_S11, 48
    .equ FR_SIZE,52

/* sched ctx indices (words) */
    .equ SC_RA,   0
    .equ SC_S0,   1
    .equ SC_S1,   2
    .equ SC_S2,   3
    .equ SC_S3,   4
    .equ SC_S4,   5
    .equ SC_S5,   6
    .equ SC_S6,   7
    .equ SC_S7,   8
    .equ SC_S8,   9
    .equ SC_S9,   10
    .equ SC_S10,  11
    .equ SC_S11,  12

/* void rtos_switch_to(tcb_t *next); a0=next
 * - save scheduler sp + (ra,s0..s11) into globals
 * - pxCurrentTCB = next
 * - sp = next->sp
 * - restore task regs and ret into task (task's ra)
 */
rtos_switch_to:
    /* save scheduler sp */
    la   t0, g_sched_sp
    sw   sp, 0(t0)

    /* save scheduler callee-saved + ra */
    la   t1, g_sched_ctx
    sw   ra,  (SC_RA*4)(t1)
    sw   s0,  (SC_S0*4)(t1)
    sw   s1,  (SC_S1*4)(t1)
    sw   s2,  (SC_S2*4)(t1)
    sw   s3,  (SC_S3*4)(t1)
    sw   s4,  (SC_S4*4)(t1)
    sw   s5,  (SC_S5*4)(t1)
    sw   s6,  (SC_S6*4)(t1)
    sw   s7,  (SC_S7*4)(t1)
    sw   s8,  (SC_S8*4)(t1)
    sw   s9,  (SC_S9*4)(t1)
    sw   s10, (SC_S10*4)(t1)
    sw   s11, (SC_S11*4)(t1)

    /* pxCurrentTCB = next */
    la   t2, pxCurrentTCB
    sw   a0, 0(t2)

    /* sp = next->sp */
    lw   sp, 0(a0)

    /* restore task regs */
    lw   ra,  FR_RA(sp)
    lw   s0,  FR_S0(sp)
    lw   s1,  FR_S1(sp)
    lw   s2,  FR_S2(sp)
    lw   s3,  FR_S3(sp)
    lw   s4,  FR_S4(sp)
    lw   s5,  FR_S5(sp)
    lw   s6,  FR_S6(sp)
    lw   s7,  FR_S7(sp)
    lw   s8,  FR_S8(sp)
    lw   s9,  FR_S9(sp)
    lw   s10, FR_S10(sp)
    lw   s11, FR_S11(sp)
    addi sp, sp, FR_SIZE

    ret

/* void rtos_yield(void);
 * - save current task regs onto task stack and store sp to pxCurrentTCB->sp
 * - switch to scheduler sp
 * - restore scheduler regs from g_sched_ctx
 * - ret back into scheduler loop (the return address saved in g_sched_ctx)
 */
rtos_yield:
    /* save task regs on task stack */
    addi sp, sp, -FR_SIZE
    sw   ra,  FR_RA(sp)
    sw   s0,  FR_S0(sp)
    sw   s1,  FR_S1(sp)
    sw   s2,  FR_S2(sp)
    sw   s3,  FR_S3(sp)
    sw   s4,  FR_S4(sp)
    sw   s5,  FR_S5(sp)
    sw   s6,  FR_S6(sp)
    sw   s7,  FR_S7(sp)
    sw   s8,  FR_S8(sp)
    sw   s9,  FR_S9(sp)
    sw   s10, FR_S10(sp)
    sw   s11, FR_S11(sp)

    /* pxCurrentTCB->sp = sp */
    la   t0, pxCurrentTCB
    lw   t1, 0(t0)
    sw   sp, 0(t1)

    /* sp = saved scheduler sp */
    la   t2, g_sched_sp
    lw   sp, 0(t2)

    /* restore scheduler regs */
    la   t3, g_sched_ctx
    lw   ra,  (SC_RA*4)(t3)
    lw   s0,  (SC_S0*4)(t3)
    lw   s1,  (SC_S1*4)(t3)
    lw   s2,  (SC_S2*4)(t3)
    lw   s3,  (SC_S3*4)(t3)
    lw   s4,  (SC_S4*4)(t3)
    lw   s5,  (SC_S5*4)(t3)
    lw   s6,  (SC_S6*4)(t3)
    lw   s7,  (SC_S7*4)(t3)
    lw   s8,  (SC_S8*4)(t3)
    lw   s9,  (SC_S9*4)(t3)
    lw   s10, (SC_S10*4)(t3)
    lw   s11, (SC_S11*4)(t3)

    ret
