#include "koreawatch.h"
#include <xil_printf.h>

// --- [함수 선언부] ---
void I2C_LCD_SendByte(u8 data, u8 rs);
void I2C_LCD_Init_Wait();
void LCD_Print(char *str);
void LCD_GotoXY(u8 row, u8 col);


int koreawatch(){

		// [추가] UART 버퍼 비우기 (중요!)
    // 모드 전환 직후 남아있을지 모르는 찌꺼기 데이터를 모두 제거합니다.
    // XUartLite_IsReceiveEmpty 가 1(True)이 될 때까지 읽어서 버립니다.
    while(!XUartLite_IsReceiveEmpty(UART_BASEADDR)) {
        XUartLite_RecvByte(UART_BASEADDR);
    }
    // 첫 줄 고정 메시지 출력
    LCD_GotoXY(0, 0);
    LCD_Print("Current Time:");
		// 0xFF가 올 때까지 버린다
		while(XUartLite_RecvByte(UART_BASEADDR) != 0xFF); 
		// 그 다음 3바이트를 순서대로 받는다
        // UART 수신 (시, 분, 초 순서)
        hour = XUartLite_RecvByte(UART_BASEADDR);
        min  = XUartLite_RecvByte(UART_BASEADDR);
        sec  = XUartLite_RecvByte(UART_BASEADDR);

        // Korea Watch 하드웨어 IP 동기화
        Xil_Out32(WATCH_BASEADDR, (u32)hour);
        usleep(100);
        Xil_Out32(WATCH_BASEADDR, (u32)min);
        usleep(100);
        Xil_Out32(WATCH_BASEADDR, (u32)sec);

        // LCD 출력 문자열 생성
        sprintf(time_str, " %02d:%02d:%02d ", hour, min, sec);

        // LCD 두 번째 줄에 시간 표시
        LCD_GotoXY(1, 0);
        LCD_Print(time_str);

        xil_printf("Synced: %02d:%02d:%02d\n\r", hour, min, sec);

    return 0; 

}

// --- [함수 구현부] ---

void I2C_LCD_SendByte(u8 data, u8 rs) {
    // 1. 하드웨어가 이전 전송을 끝낼 때까지 기다림
    while(Xil_In32(IIC_BASEADDR + LCD_REG_BUSY) & 0x01); 

    // 2. 데이터 레지스터(slv_reg0)에 1바이트 그대로 쓰기
    // 하드웨어가 내부에서 4비트씩 나누어 보내므로 소프트웨어는 나누지 않습니다.
    Xil_Out32(IIC_BASEADDR + LCD_REG_DATA, (u32)data);

    // 3. 제어 레지스터(slv_reg1) 트리거: bit1(rs), bit0(send)
    Xil_Out32(IIC_BASEADDR + LCD_REG_CONTROL, (rs << 1) | 0x01);
    
    // 하드웨어가 트리거를 인지할 수 있도록 아주 잠깐 대기 후 끔
    usleep(10); 
    Xil_Out32(IIC_BASEADDR + LCD_REG_CONTROL, 0);
    
    // 물리적인 전송 여유 시간
    usleep(1000); 
}

void I2C_LCD_Init_Wait() {
    // 하드웨어 Verilog IP가 INIT 상태에서 80,000,00 클럭 동안 대기하고
    // 이후 6개의 명령어를 보내므로 약 1초 정도 충분히 대기합니다.
    xil_printf("Waiting for Hardware LCD Initialization...\n\r");
    usleep(1000000); 
}

void LCD_Print(char *str) {
    while (*str) I2C_LCD_SendByte((u8)(*str++), 1); // Data 모드: rs=1
}

void LCD_GotoXY(u8 row, u8 col) {
    I2C_LCD_SendByte((row == 0 ? 0x80 : 0xC0) + col, 0); // Command 모드: rs=0
}