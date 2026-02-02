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

#include "stopwatch.h"

int stopwatch(unsigned int btn)
{
    lcd_cntr[0] = 0x06;        // 한 칸씩 커서 자동이동
    lcd_cntr[1] &= ~(1<<1);   // RS = 0 (command)
    lcd_cntr[1] |=  (1<<0);   // send = 1
    while(lcd_cntr[2]);
    lcd_cntr[1] &= ~(1<<0);   // send = 0
    
        u8 run_min = (stwatch_cntr[2] >> 16);
        u8 run_sec = (stwatch_cntr[2] >> 8) & 0xff;
        u8 run_csec = stwatch_cntr[2] & 0xff;

        u8 lap_min = (stwatch_cntr[3] >> 16);
        u8 lap_sec = (stwatch_cntr[3] >> 8) & 0xff;
        u8 lap_csec = stwatch_cntr[3] & 0xff;

        u8 lap_flag = (stwatch_cntr[1] >> 1) & 0b1; // read lap_flag        

        u8 time_buf[16], lap_buf[16], uart_buf[32];

        // INT flag 활용 ver
            if(btn == 1){   // start btn pushed
                stwatch_cntr[0] |= 0b001;
                u8 run = stwatch_cntr[1] & 0b1;                
                if(run) print("... START ...\n\n\n");   // run = 1
                else if(!run) print("... PAUSE ...\n\n\n"); // run = 0, 총 걸린시간 및 마지막 랩 시간도 UART 전송.
            }
            else if(btn == 2){  // lap record btn pushed
                stwatch_cntr[0] |= (lap_count << 3);       // send lap_count
                stwatch_cntr[0] |= 0x4; // ready init setup
                stwatch_cntr[0] |= 0b010;   // btn_state reg set
                while(!lap_flag){ lap_flag = (stwatch_cntr[1] >> 1) & 0b1; // wait lap_flag;
                }
                if(lap_flag){  // lap_flag = 1(lap record setup)
                    stwatch_cntr[0] &= 0xfffffffb;  // ready clear                
                    cap_min = stwatch_cntr[4] >> 16;
                    cap_sec = (stwatch_cntr[4] >> 8) & 0xff;
                    cap_csec = stwatch_cntr[4] & 0xff;
                    diff_min = stwatch_cntr[5] >> 16;
                    diff_sec = (stwatch_cntr[5] >> 8) & 0xff;
                    diff_csec = stwatch_cntr[5] & 0xff;
                    sign_flag = (stwatch_cntr[1] >> 2) & 0b1;    // read sign flag
                    if(sign_flag)
                        sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( - %2d:%2d.%2d)\n", lap_count, cap_min, cap_sec, cap_csec, diff_min, diff_sec, diff_csec); // 이전 랩시간과의 차이 UART에 표시할 것.
                    else
                        sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( + %2d:%2d.%2d)\n", lap_count, cap_min, cap_sec, cap_csec, diff_min, diff_sec, diff_csec); // 이전 랩시간과의 차이 UART에 표시할 것.
                    xil_printf(uart_buf);
                    u8 run = stwatch_cntr[1] & 0b1;                
                    if(run) {lap_count += 1;
                    }
                    else if(!run){ // clear btn pushed
                        xil_printf("Total Run-time : %2d:%2d.%2d\n",run_min, run_sec, run_csec);
                        print("... CLEAR ...\n\n\n");
                        lap_count = 1;
                        // stwatch_cntr[0] |= (lap_count << 3);       // send lap_count
                    }
                }                        
            }
            else stwatch_cntr[0] &= 0x4;   // btn_state reg reset     

        sprintf(time_buf, "TIME : %2d:%2d.%2d", run_min, run_sec, run_csec);
        sprintf(lap_buf, "LAP%2d: %2d:%2d.%2d", lap_count, lap_min, lap_sec, lap_csec);

        for(uint8_t i = 0; i < 15; i++)
        {
            if(time_buf[i] != NULL)
            {
                lcd_cntr[0] = time_buf[i];
                lcd_cntr[1] = lcd_cntr[1] | 0b10;   // data register select
                lcd_cntr[1] = lcd_cntr[1] | 0b1;    // send start
                while(lcd_cntr[2]);                 // busy waiting
                lcd_cntr[1] = lcd_cntr[1] & 0b10;   // control bit clear
            }
        };

        lcd_cntr[0] = 0xc0;                 // 아랫줄로 이동
        lcd_cntr[1] = lcd_cntr[1] & 0b01;   // instruction register select
        lcd_cntr[1] = lcd_cntr[1] | 0b1;    // send start
        while(lcd_cntr[2]);                 // busy waiting
        lcd_cntr[1] = lcd_cntr[1] & 0b10;   // control bit clear
            
        for(uint8_t i = 0; i < 15; i++)
        {
            if(lap_buf[i] != NULL)
            {
                lcd_cntr[0] = lap_buf[i];
                lcd_cntr[1] = lcd_cntr[1] | 0b10;   // data register select
                lcd_cntr[1] = lcd_cntr[1] | 0b1;    // send start
                while(lcd_cntr[2]);                 // busy waiting
                lcd_cntr[1] = lcd_cntr[1] & 0b10;   // control bit clear
            }
        };
        
        lcd_cntr[0] = 0x80;                 // 윗줄로 이동
        lcd_cntr[1] = lcd_cntr[1] & 0b01;   // instruction register select
        lcd_cntr[1] = lcd_cntr[1] | 0b1;    // send start
        while(lcd_cntr[2]);                 // busy waiting
        lcd_cntr[1] = lcd_cntr[1] & 0b10;   // control bit clear
        
    return 0;
}
