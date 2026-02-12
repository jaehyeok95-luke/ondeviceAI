    .section .text
    .align 4

    .global _interrupt_handler
    .global vPortStartFirstTask

    .extern pxCurrentTCB
    .extern ulTaskSwitchRequested
    .extern vTaskSwitchContext
    .extern XIntc_InterruptHandler
    .extern xSchedulerRunning

    .extern pIntcInstance          /* ✅ C에서 제공: void *pIntcInstance = &Intc; */

/* =========================================================
 * Frame layout (C와 반드시 동일)
 * ========================================================= */
    .equ FRAME_WORDS, 32
    .equ FRAME_SIZE,  (FRAME_WORDS*4)

    .equ OFF_RA,   0
    .equ OFF_GP,   4
    .equ OFF_TP,   8
    .equ OFF_T0,  12
    .equ OFF_T1,  16
    .equ OFF_T2,  20
    .equ OFF_T3,  24
    .equ OFF_T4,  28
    .equ OFF_T5,  32
    .equ OFF_T6,  36

    .equ OFF_A0,  40
    .equ OFF_A1,  44
    .equ OFF_A2,  48
    .equ OFF_A3,  52
    .equ OFF_A4,  56
    .equ OFF_A5,  60
    .equ OFF_A6,  64
    .equ OFF_A7,  68

    .equ OFF_S0,  72
    .equ OFF_S1,  76
    .equ OFF_S2,  80
    .equ OFF_S3,  84
    .equ OFF_S4,  88
    .equ OFF_S5,  92
    .equ OFF_S6,  96
    .equ OFF_S7, 100
    .equ OFF_S8, 104
    .equ OFF_S9, 108
    .equ OFF_S10,112
    .equ OFF_S11,116

    .equ OFF_MEPC,   120
    .equ OFF_MSTATUS,124


/* =========================================================
 * _interrupt_handler()
 * - mtvec로 직접 진입하는 trap entry
 * - a0에는 의미있는 값이 보장되지 않음
 * ========================================================= */
_interrupt_handler:
    /* 1) Save context to current task stack */
    addi sp, sp, -FRAME_SIZE

    sw ra,  OFF_RA(sp)
    sw gp,  OFF_GP(sp)
    sw tp,  OFF_TP(sp)
    sw t0,  OFF_T0(sp)
    sw t1,  OFF_T1(sp)
    sw t2,  OFF_T2(sp)
    sw t3,  OFF_T3(sp)
    sw t4,  OFF_T4(sp)
    sw t5,  OFF_T5(sp)
    sw t6,  OFF_T6(sp)

    sw a0,  OFF_A0(sp)
    sw a1,  OFF_A1(sp)
    sw a2,  OFF_A2(sp)
    sw a3,  OFF_A3(sp)
    sw a4,  OFF_A4(sp)
    sw a5,  OFF_A5(sp)
    sw a6,  OFF_A6(sp)
    sw a7,  OFF_A7(sp)

    sw s0,  OFF_S0(sp)
    sw s1,  OFF_S1(sp)
    sw s2,  OFF_S2(sp)
    sw s3,  OFF_S3(sp)
    sw s4,  OFF_S4(sp)
    sw s5,  OFF_S5(sp)
    sw s6,  OFF_S6(sp)
    sw s7,  OFF_S7(sp)
    sw s8,  OFF_S8(sp)
    sw s9,  OFF_S9(sp)
    sw s10, OFF_S10(sp)
    sw s11, OFF_S11(sp)

    csrr t0, mepc
    sw   t0, OFF_MEPC(sp)
    csrr t0, mstatus
    sw   t0, OFF_MSTATUS(sp)

    /* pxCurrentTCB->sp = sp */
    la  t1, pxCurrentTCB
    lw  t2, 0(t1)          /* t2 = pxCurrentTCB */
    beqz t2, 1f
    sw  sp, 0(t2)
1:
    /* 2) Call XIntc_InterruptHandler(&Intc) */
    /* ✅ mtvec 진입에선 a0가 &Intc가 아님 -> pIntcInstance에서 로드 */
    la  t0, pIntcInstance      /* t0 = &pIntcInstance */
    lw  a0, 0(t0)              /* a0 = pIntcInstance (= &Intc) */
    call XIntc_InterruptHandler

    /* 3) If scheduler running && ulTaskSwitchRequested != 0 -> vTaskSwitchContext */
    la  t0, xSchedulerRunning
    lw  t1, 0(t0)
    beqz t1, 2f            /* scheduler not running => skip */

    la  t0, ulTaskSwitchRequested
    lw  t1, 0(t0)
    beqz t1, 2f
    sw  zero, 0(t0)
    call vTaskSwitchContext

2:
    /* 4) Restore context from pxCurrentTCB->sp */
    la  t1, pxCurrentTCB
    lw  t2, 0(t1)
    beqz t2, 3f
    lw  sp, 0(t2)
3:
    lw  t0, OFF_MEPC(sp)
    csrw mepc, t0
    lw  t0, OFF_MSTATUS(sp)
    csrw mstatus, t0

    lw ra,  OFF_RA(sp)
    lw gp,  OFF_GP(sp)
    lw tp,  OFF_TP(sp)
    lw t0,  OFF_T0(sp)
    lw t1,  OFF_T1(sp)
    lw t2,  OFF_T2(sp)
    lw t3,  OFF_T3(sp)
    lw t4,  OFF_T4(sp)
    lw t5,  OFF_T5(sp)
    lw t6,  OFF_T6(sp)

    lw a0,  OFF_A0(sp)
    lw a1,  OFF_A1(sp)
    lw a2,  OFF_A2(sp)
    lw a3,  OFF_A3(sp)
    lw a4,  OFF_A4(sp)
    lw a5,  OFF_A5(sp)
    lw a6,  OFF_A6(sp)
    lw a7,  OFF_A7(sp)

    lw s0,  OFF_S0(sp)
    lw s1,  OFF_S1(sp)
    lw s2,  OFF_S2(sp)
    lw s3,  OFF_S3(sp)
    lw s4,  OFF_S4(sp)
    lw s5,  OFF_S5(sp)
    lw s6,  OFF_S6(sp)
    lw s7,  OFF_S7(sp)
    lw s8,  OFF_S8(sp)
    lw s9,  OFF_S9(sp)
    lw s10, OFF_S10(sp)
    lw s11, OFF_S11(sp)

    addi sp, sp, FRAME_SIZE
    mret


/* =========================================================
 * vPortStartFirstTask()
 * ========================================================= */
vPortStartFirstTask:
    la  t1, pxCurrentTCB
    lw  t2, 0(t1)
    lw  sp, 0(t2)

    lw  t0, OFF_MEPC(sp)
    csrw mepc, t0
    lw  t0, OFF_MSTATUS(sp)
    csrw mstatus, t0

    lw ra,  OFF_RA(sp)
    lw gp,  OFF_GP(sp)
    lw tp,  OFF_TP(sp)
    lw t0,  OFF_T0(sp)
    lw t1,  OFF_T1(sp)
    lw t2,  OFF_T2(sp)
    lw t3,  OFF_T3(sp)
    lw t4,  OFF_T4(sp)
    lw t5,  OFF_T5(sp)
    lw t6,  OFF_T6(sp)

    lw a0,  OFF_A0(sp)
    lw a1,  OFF_A1(sp)
    lw a2,  OFF_A2(sp)
    lw a3,  OFF_A3(sp)
    lw a4,  OFF_A4(sp)
    lw a5,  OFF_A5(sp)
    lw a6,  OFF_A6(sp)
    lw a7,  OFF_A7(sp)

    lw s0,  OFF_S0(sp)
    lw s1,  OFF_S1(sp)
    lw s2,  OFF_S2(sp)
    lw s3,  OFF_S3(sp)
    lw s4,  OFF_S4(sp)
    lw s5,  OFF_S5(sp)
    lw s6,  OFF_S6(sp)
    lw s7,  OFF_S7(sp)
    lw s8,  OFF_S8(sp)
    lw s9,  OFF_S9(sp)
    lw s10, OFF_S10(sp)
    lw s11, OFF_S11(sp)

    addi sp, sp, FRAME_SIZE
    mret
