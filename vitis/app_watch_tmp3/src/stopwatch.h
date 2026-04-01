#include "main.h"

// int stopwatch(unsigned int btn);
#ifndef STOPWATCH_H
#define STOPWATCH_H

// ========================================
// Stopwatch 레지스터 오프셋 (word 단위)
// ========================================
// 0x00 : REG_TRIGGER  (W) bit0=start, bit1=clear
// 0x04 : REG_STATUS   (R) bit0=run, bit1=lap_flag, bit2=sign_flag
// 0x08 : REG_MAIN     (R) {min[23:16], sec[15:8], csec[7:0]}
// 0x0C : REG_LAP      (R) {lap_count[31:24], lap_min[23:16], lap_sec[15:8], lap_csec[7:0]}
// 0x10 : REG_DIFF     (R) {diff_min[23:16], diff_sec[15:8], diff_csec[7:0]}
// 0x14 : REG_SNAP     (R) {snap_count[31:24], snap_min[23:16], snap_sec[15:8], snap_csec[7:0]}
#define REG_TRIGGER     0
#define REG_STATUS      1
#define REG_MAIN        2
#define REG_LAP         3

// ========================================
// Trigger 비트
// ========================================
#define TRIG_START      (1 << 0)
#define TRIG_CLEAR      (1 << 1)

// ========================================
// Status 비트
// ========================================
#define STATUS_RUN      (1 << 0)

// ========================================
// LCD 레지스터 (word 단위)
// ========================================
#define LCD_DATA        0
#define LCD_CTRL        1
#define LCD_STATUS      2

// ========================================
// 함수 선언
// ========================================
void stopwatch_init(void);
int  stopwatch(unsigned int btn);
void lcd_send_cmd(u8 cmd);
void lcd_send_data(u8 data);
void lcd_print_line(u8 *buf, u8 len);

#endif


