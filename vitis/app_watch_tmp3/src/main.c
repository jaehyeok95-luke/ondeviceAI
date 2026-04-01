/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "main.h"
#include "stopwatch.h"
#include "koreawatch.h"
#include "timer.h"
#include <stdint.h>

u8 hour, min, sec;
char time_str[20];

/////////////////////////////////////////////////////////
unsigned int *stwatch_cntr = (unsigned int *)stwatch_addr;
unsigned int *lcd_cntr = (unsigned int *)lcd_addr;

XGpio gpio_device;
XIntc intc;

u8 btn_flag = 0;
u8 cap_min = 0;
u8 cap_sec = 0;
u8 cap_csec = 0;
u8 diff_min = 0;
u8 diff_sec = 0;
u8 diff_csec = 0;
u8 lap_count = 1;
u32 prev_lap = 0.0f;
u32 diff_lap = 0.0f;
////////////////////////////////////////////////////////////

volatile uint32_t btn_snapshot = 0;
volatile uint32_t btn_last_raw = 0; /* for polling fallback / de-dup */

    /* LCD update cache */
uint8_t last_mm = 0xFF, last_ss = 0xFF;
uint8_t last_mode = 0xFF;
uint8_t last_alarm = 0xFF;

/* =========================
 * SW state
 * ========================= */
uint8_t set_sec = 0;
uint8_t set_min = 0;
uint8_t running = 0;

/* =========================
 * Mapped devices
 * ========================= */
volatile uint32_t *cooktimer = (volatile uint32_t *)COOKTIMER_BASEADDR;

// watch_mode : 0(normal), 1(stopwatch), 2(timer)
u8 watch_mode = 0;
unsigned int btn, btn_st, btn_tim;

// ISR 함수 - posedge, negedge 모두 발생해서 총 2번 발생.
void btn_Handler(void *CallBackRef){

    btn_flag = 1;
        
    XGpio *gpio = (XGpio *)CallBackRef;

    btn_snapshot = XGpio_DiscreteRead(gpio, BTN_CHANNEL) & 0xFu;
    btn_last_raw = btn_snapshot;

    // // INT 빠져나오기 위해 종료 반드시 필요
    XGpio_InterruptClear(&gpio_device, 1);
    return;
}

int main()
{
    init_platform();

    XGpio_Initialize(&gpio_device, XPAR_XGPIO_0_BASEADDR);  // GPIO base addr setting
    XGpio_SetDataDirection(&gpio_device, 1, 0xffff); // 1 - INPUT, 0 - OUTPUT
    
    // gpio INT init
    XIntc_Initialize(&intc, intc_addr);
    // gpio INT connect -> handler 함수 사용자가 정의해야함.
    XIntc_Connect(&intc, BTN_VEC_ID, btn_Handler, (void *)&gpio_device);
    // UART INT connect -> 관련 handler 는 이미 xuartlite.h 에 정의되어있다.
    // gpio INT EN
    XIntc_Enable(&intc, BTN_VEC_ID);
    XIntc_Start(&intc, XIN_REAL_MODE);
    
    // gpio global INT EN
    XGpio_InterruptEnable(&gpio_device, 1);
    XGpio_InterruptGlobalEnable(&gpio_device);

    // exception EN
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, (void *)&intc);
    Xil_ExceptionEnable();

    // 1. 시작 전 UART 버퍼 비우기
    while(!XUartLite_IsReceiveEmpty(UART_BASEADDR)) {
        XUartLite_RecvByte(UART_BASEADDR);
    }

    /* Initial state */
    cooktimer_reset_to_zero();
    
    // 2. 하드웨어 자체 초기화가 끝날 때까지 대기 (중복 초기화 함수 제거)
    I2C_LCD_Init_Wait();

    xil_printf("LCD Clock Start (Hardware Managed Mode)...\n\r");
    
    while(1){
        if(btn_flag){
            btn_flag = 0;
            msleep(20);
            btn = XGpio_DiscreteRead(&gpio_device, 1);
            if(btn == 8){   // chmod btn pushed
                if(watch_mode < 2)  watch_mode += 1;
                else watch_mode = 0;
                lcd_cntr[0] = 0x01;        // 한 칸씩 커서 자동이동
                lcd_cntr[1] &= ~(1<<1);   // RS = 0 (command)
                lcd_cntr[1] |=  (1<<0);   // send = 1
                while(lcd_cntr[2]);
                lcd_cntr[1] &= ~(1<<0);   // send = 0         
            }
            else if(btn == 1){
                if(watch_mode == 1) btn_st = btn;
                else if(watch_mode == 2) btn_tim = btn;
            }
            else if(btn == 2){
                if(watch_mode == 1) btn_st = btn;
                else if(watch_mode == 2) btn_tim = btn;
            }
            else btn_tim = btn;
        }
        
        if(watch_mode == 0){
            koreawatch();
        }
        else if(watch_mode == 1){
            stopwatch(btn_st);
            btn_st = 0;
        }
        else{
            timer(btn_tim);
            btn_tim = 0;
        }
    };
    cleanup_platform();
    return 0;
}
