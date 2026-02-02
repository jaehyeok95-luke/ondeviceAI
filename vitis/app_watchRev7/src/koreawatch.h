#include "main.h"

// LCD IP 레지스터 오프셋 정의
#define LCD_REG_DATA    0  // slv_reg0: 보낼 데이터 (8비트 통째로)
#define LCD_REG_CONTROL 4  // slv_reg1: 제어 신호 (bit0: send, bit1: rs)
#define LCD_REG_BUSY    8  // slv_reg2: 하드웨어 busy 상태 확인

int koreawatch();
// --- [함수 선언부] ---
void I2C_LCD_SendByte(u8 data, u8 rs);
void I2C_LCD_Init_Wait();
void LCD_Print(char *str);
void LCD_GotoXY(u8 row, u8 col);
