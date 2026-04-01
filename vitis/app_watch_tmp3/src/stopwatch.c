#include "stopwatch.h"

// ========================================
// 초기화
// ========================================
void stopwatch_init(void)
{
    lap_count = 0;
    diff_min = 0; diff_sec = 0; diff_csec = 0;

    // trigger 레지스터 초기화
    stwatch_cntr[REG_TRIGGER] = 0;
}

// ========================================
// LCD 유틸리티 함수
// ========================================
void lcd_send_cmd(u8 cmd)
{
    lcd_cntr[LCD_DATA] = cmd;
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] & ~0b10;  // RS=0 (command)
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] | 0b01;   // send=1
    while (lcd_cntr[LCD_STATUS]);                       // busy wait
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] & ~0b11;  // clear
}

void lcd_send_data(u8 data)
{
    lcd_cntr[LCD_DATA] = data;
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] | 0b10;   // RS=1 (data)
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] | 0b01;   // send=1
    while (lcd_cntr[LCD_STATUS]);                       // busy wait
    lcd_cntr[LCD_CTRL] = lcd_cntr[LCD_CTRL] & ~0b11;  // clear
}

void lcd_print_line(u8 *buf, u8 len)
{
    for (u8 i = 0; i < len; i++) {
        if (buf[i] != '\0')
            lcd_send_data(buf[i]);
    }
}

// ========================================
// 메인 스톱워치 함수
// ========================================
int stopwatch(unsigned int btn)
{
    lcd_send_cmd(0x06);

    u8 time_buf[16], lap_buf[16], uart_buf[64];

    if (btn == 1) {
        // ===== START / PAUSE =====
        stwatch_cntr[REG_TRIGGER] = TRIG_START;

        u8 run = stwatch_cntr[REG_STATUS] & STATUS_RUN;
        if (run)
            print("... START ...\n\n\n");
        else
            print("... PAUSE ...\n\n\n");
    }
    else if (btn == 2) {
        u8 run = stwatch_cntr[REG_STATUS] & STATUS_RUN;
        if (run) {
            // ===== RUNNING 중 LAP 기록 =====            
    
    // 디버그: 트리거 후 상태

            cap_min   = (stwatch_cntr[REG_LAP] >> 16) & 0xff;
            cap_sec   = (stwatch_cntr[REG_LAP] >> 8)  & 0xff;
            cap_csec  =  stwatch_cntr[REG_LAP]        & 0xff;
            u32 curr_lap = (cap_min * 6000) + cap_sec * 100 + cap_csec;
                      
            if(lap_count > 1){
                if(curr_lap >= prev_lap){
                    diff_lap = curr_lap - prev_lap;
                    diff_min = diff_lap / 6000;
                    diff_sec = (diff_lap % 6000) / 100;
                    diff_csec = diff_lap % 100;
                    sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( + %2d:%2d.%2d)\n",
                                            lap_count, cap_min, cap_sec, cap_csec,
                                            diff_min, diff_sec, diff_csec);
                }
                else{
                    diff_lap = prev_lap - curr_lap;
                    diff_min = diff_lap / 6000;
                    diff_sec = (diff_lap % 6000) / 100;
                    diff_csec = diff_lap % 100;
                    sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( - %2d:%2d.%2d)\n",
                        lap_count, cap_min, cap_sec, cap_csec,
                        diff_min, diff_sec, diff_csec);                    
                }   
            }
            else{
                diff_min = diff_lap / 6000;
                diff_sec = (diff_lap % 6000) / 100;
                diff_csec = diff_lap % 100;
                sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( + %2d:%2d.%2d)\n",
                        lap_count, cap_min, cap_sec, cap_csec,
                        diff_min, diff_sec, diff_csec);                 
            }
            xil_printf(uart_buf);
            lap_count += 1; 
            prev_lap = curr_lap;

            stwatch_cntr[REG_TRIGGER] = TRIG_CLEAR;            
        }
        else {
            // ===== STOP 상태에서 CLEAR =====
            cap_min   = (stwatch_cntr[REG_LAP] >> 16) & 0xff;
            cap_sec   = (stwatch_cntr[REG_LAP] >> 8)  & 0xff;
            cap_csec  =  stwatch_cntr[REG_LAP]        & 0xff;
            u32 curr_lap = (cap_min * 6000) + cap_sec * 100 + cap_csec;

            u8 r_min   = (stwatch_cntr[REG_MAIN] >> 16) & 0xff;
            u8 r_sec   = (stwatch_cntr[REG_MAIN] >> 8)  & 0xff;
            u8 r_csec  =  stwatch_cntr[REG_MAIN]        & 0xff;


            // 3단계: 출력
            if(curr_lap >= prev_lap){
                diff_lap = curr_lap - prev_lap;
                diff_min = diff_lap / 6000;
                diff_sec = (diff_lap % 6000) / 100;
                diff_csec = diff_lap % 100;
                sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( + %2d:%2d.%2d)\n",
                                            lap_count, cap_min, cap_sec, cap_csec,
                                            diff_min, diff_sec, diff_csec);
            }
            else{
                diff_lap = prev_lap - curr_lap;
                diff_min = diff_lap / 6000;
                diff_sec = (diff_lap % 6000) / 100;
                diff_csec = diff_lap % 100;
                sprintf(uart_buf, "LAP %d -> %2d:%2d.%2d ( - %2d:%2d.%2d)\n",
                        lap_count, cap_min, cap_sec, cap_csec,
                        diff_min, diff_sec, diff_csec);                    
            } 
            xil_printf(uart_buf);

            xil_printf("Total Run-time : %2d:%2d.%2d\n", r_min, r_sec, r_csec);
            print("... CLEAR ...\n\n\n");

            lap_count = 1;
            diff_min = 0; diff_sec = 0; diff_csec = 0;
            prev_lap = 0;

            stwatch_cntr[REG_TRIGGER] = TRIG_CLEAR;            
        }
    }
    else {
        stwatch_cntr[REG_TRIGGER] = 0;
    }

    // ========================================
    // LCD 표시: 실시간 LAP 데이터 사용 (REG_LAP)
    // ========================================
    u8 run_min  = (stwatch_cntr[REG_MAIN] >> 16) & 0xff;
    u8 run_sec  = (stwatch_cntr[REG_MAIN] >> 8)  & 0xff;
    u8 run_csec =  stwatch_cntr[REG_MAIN]        & 0xff;

    // LCD는 실시간 lap 데이터 (REG_LAP)
    u8 l_min   = (stwatch_cntr[REG_LAP] >> 16) & 0xff;
    u8 l_sec   = (stwatch_cntr[REG_LAP] >> 8)  & 0xff;
    u8 l_csec  =  stwatch_cntr[REG_LAP]        & 0xff;

    sprintf(time_buf, "TIME : %2d:%2d.%2d", run_min, run_sec, run_csec);
    lcd_send_cmd(0x80);
    lcd_print_line(time_buf, 15);

    sprintf(lap_buf, "LAP%2d: %2d:%2d.%2d", lap_count, l_min, l_sec, l_csec);
    lcd_send_cmd(0xC0);
    lcd_print_line(lap_buf, 15);

    lcd_send_cmd(0x80);

    return 0;
}

