    .section .text
    .align 4
    .globl InterruptEntry
    .type  InterruptEntry, @function

    .extern pxCurrentTCB
    .extern g_switch_pending
    .extern rtos_pick_next_task
    .extern XIntc_InterruptHandler

    /* Context frame offsets (bytes) */
    .equ CTX_RA,       0
    .equ CTX_GP,       4
    .equ CTX_TP,       8
    .equ CTX_T0,      12
    .equ CTX_T1,      16
    .equ CTX_T2,      20
    .equ CTX_T3,      24
    .equ CTX_T4,      28
    .equ CTX_T5,      32
    .equ CTX_T6,      36
    .equ CTX_A0,      40
    .equ CTX_A1,      44
    .equ CTX_A2,      48
    .equ CTX_A3,      52
    .equ CTX_A4,      56
    .equ CTX_A5,      60
    .equ CTX_A6,      64
    .equ CTX_A7,      68
    .equ CTX_S0,      72
    .equ CTX_S1,      76
    .equ CTX_S2,      80
    .equ CTX_S3,      84
    .equ CTX_S4,      88
    .equ CTX_S5,      92
    .equ CTX_S6,      96
    .equ CTX_S7,     100
    .equ CTX_S8,     104
    .equ CTX_S9,     108
    .equ CTX_S10,    112
    .equ CTX_S11,    116
    .equ CTX_MEPC,   120
    .equ CTX_MSTATUS,124
    .equ CTX_SIZE,   128

InterruptEntry:
    addi sp, sp, -CTX_SIZE

    /* save GPRs */
    sw ra,  CTX_RA(sp)
    sw gp,  CTX_GP(sp)
    sw tp,  CTX_TP(sp)
    sw t0,  CTX_T0(sp)
    sw t1,  CTX_T1(sp)
    sw t2,  CTX_T2(sp)
    sw t3,  CTX_T3(sp)
    sw t4,  CTX_T4(sp)
    sw t5,  CTX_T5(sp)
    sw t6,  CTX_T6(sp)
    sw a0,  CTX_A0(sp)   /* a0 = &Intc passed from exception handler */
    sw a1,  CTX_A1(sp)
    sw a2,  CTX_A2(sp)
    sw a3,  CTX_A3(sp)
    sw a4,  CTX_A4(sp)
    sw a5,  CTX_A5(sp)
    sw a6,  CTX_A6(sp)
    sw a7,  CTX_A7(sp)
    sw s0,  CTX_S0(sp)
    sw s1,  CTX_S1(sp)
    sw s2,  CTX_S2(sp)
    sw s3,  CTX_S3(sp)
    sw s4,  CTX_S4(sp)
    sw s5,  CTX_S5(sp)
    sw s6,  CTX_S6(sp)
    sw s7,  CTX_S7(sp)
    sw s8,  CTX_S8(sp)
    sw s9,  CTX_S9(sp)
    sw s10, CTX_S10(sp)
    sw s11, CTX_S11(sp)

    /* save CSRs */
    csrr t0, mepc
    sw   t0, CTX_MEPC(sp)
    csrr t0, mstatus
    sw   t0, CTX_MSTATUS(sp)

    /* pxCurrentTCB->sp = sp */
    la   t1, pxCurrentTCB
    lw   t2, 0(t1)
    beqz t2, 1f
    sw   sp, 0(t2)
1:
    /* call XIntc_InterruptHandler(a0) */
    call XIntc_InterruptHandler

    /* if (g_switch_pending) pxCurrentTCB = rtos_pick_next_task(); g_switch_pending=0; */
    la   t0, g_switch_pending
    lw   t1, 0(t0)
    beqz t1, 2f
    call rtos_pick_next_task
    /* a0 returned = next tcb* */
    la   t2, pxCurrentTCB
    sw   a0, 0(t2)
    sw   x0, 0(t0)         /* g_switch_pending = 0 */
2:
    /* sp = pxCurrentTCB->sp */
    la   t1, pxCurrentTCB
    lw   t2, 0(t1)
    lw   sp, 0(t2)

    /* restore CSRs */
    lw   t0, CTX_MSTATUS(sp)
    csrw mstatus, t0
    lw   t0, CTX_MEPC(sp)
    csrw mepc, t0

    /* restore GPRs */
    lw ra,  CTX_RA(sp)
    lw gp,  CTX_GP(sp)
    lw tp,  CTX_TP(sp)
    lw t0,  CTX_T0(sp)
    lw t1,  CTX_T1(sp)
    lw t2,  CTX_T2(sp)
    lw t3,  CTX_T3(sp)
    lw t4,  CTX_T4(sp)
    lw t5,  CTX_T5(sp)
    lw t6,  CTX_T6(sp)
    lw a0,  CTX_A0(sp)
    lw a1,  CTX_A1(sp)
    lw a2,  CTX_A2(sp)
    lw a3,  CTX_A3(sp)
    lw a4,  CTX_A4(sp)
    lw a5,  CTX_A5(sp)
    lw a6,  CTX_A6(sp)
    lw a7,  CTX_A7(sp)
    lw s0,  CTX_S0(sp)
    lw s1,  CTX_S1(sp)
    lw s2,  CTX_S2(sp)
    lw s3,  CTX_S3(sp)
    lw s4,  CTX_S4(sp)
    lw s5,  CTX_S5(sp)
    lw s6,  CTX_S6(sp)
    lw s7,  CTX_S7(sp)
    lw s8,  CTX_S8(sp)
    lw s9,  CTX_S9(sp)
    lw s10, CTX_S10(sp)
    lw s11, CTX_S11(sp)

    addi sp, sp, CTX_SIZE
    mret
