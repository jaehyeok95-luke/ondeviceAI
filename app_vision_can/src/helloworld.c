#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xuartlite_l.h"
// ==========================================================
// [설정] 내 IP 주소
// ==========================================================
#define MY_CAN_BASE XPAR_MYIP_CAN_CONTROLLER_0_BASEADDR 
#define UART_BASE   XPAR_AXI_UARTLITE_0_BASEADDR 

// 레지스터 오프셋
#define REG_CTRL    (MY_CAN_BASE + 0x00)
#define REG_STATUS  (MY_CAN_BASE + 0x04)
#define REG_TX_CFG  (MY_CAN_BASE + 0x08)
#define REG_TX_DATL (MY_CAN_BASE + 0x0C)
#define REG_TX_DATH (MY_CAN_BASE + 0x10)
#define REG_RX_DATL (MY_CAN_BASE + 0x18)

// ==========================================================
// [함수 1] CAN 패킷 전송 (지석님 RX 코드 맞춤: Mode << 16)
// ==========================================================
void send_can_packet(int id, int angle, int enable, int mode) {
    u32 tx_packet = 0;

    // 범위 제한 (Safety)
    if(angle > 180) angle = 180;
    if(mode > 3) mode = 3;

    // ------------------------------------------------------
    // [데이터 패킹]
    // ------------------------------------------------------
    tx_packet |= (id & 0x3F);
    if(enable) tx_packet |= (1 << 6);
    tx_packet |= ((angle & 0xFF) << 8);
    tx_packet |= ((mode & 0x03) << 16); // RX코드 (>>16) 대응

    // 디버그 출력
    xil_printf("\r\n>>> [TX] ID:%d, En:%d, Ang:%d, Mode:%d\r\n", id, enable, angle, mode);

    // 하드웨어 레지스터 쓰기
    Xil_Out32(REG_TX_CFG, (0x123 << 4) | 0x8);
    Xil_Out32(REG_TX_DATL, tx_packet);
    Xil_Out32(REG_TX_DATH, 0x00);

    // 전송 트리거
    Xil_Out32(REG_CTRL, 0x01);
    usleep(10);
    Xil_Out32(REG_CTRL, 0x00);
}

static void uart_to_can(void)
{
    static enum {
        ST_IDLE,
        ST_AFTER_S,   // 'S' 다음 ',' 기다림
        ST_AXIS,
        ST_AFTER_AXIS_COMMA, // axis 다음 ',' 기다림
        ST_ANGLE
    } state = ST_IDLE;

    static int axis = 0;
    static int angle = 0;

    while (!XUartLite_IsReceiveEmpty(UART_BASE)) {

        u8 c = XUartLite_RecvByte(UART_BASE);

        if (c == '\r') continue;

        switch (state) {

        case ST_IDLE:
            if (c == 'S') {
                axis = 0;
                angle = 0;
                state = ST_AFTER_S;
            }
            break;

        case ST_AFTER_S:
            if (c == ',') {
                state = ST_AXIS;
            } else {
                state = ST_IDLE;
            }
            break;

        case ST_AXIS:
            if (c >= '0' && c <= '9') {
                axis = axis * 10 + (c - '0');
            } else if (c == ',') {
                state = ST_ANGLE;
            } else {
                state = ST_IDLE;
            }
            break;

        case ST_ANGLE:
            if (c >= '0' && c <= '9') {
                angle = angle * 10 + (c - '0');
            } else if (c == '\n') {
                if (axis >= 0 && axis <= 5 && angle >= 0 && angle <= 180) {
                    send_can_packet((u8)axis, (u8)angle, 1, 3);
                    xil_printf("[UART->CAN] axis=%d angle=%d\r\n", axis, angle);
                } else {
                    xil_printf("[UART] range err axis=%d angle=%d\r\n", axis, angle);
                }
                state = ST_IDLE;
            } else {
                state = ST_IDLE;
            }
            break;
        }
    }  
}

void parse_and_send_manual() {
    int values[4] = {0, 0, 0, 3}; 

    // 전송 함수 호출
    send_can_packet(values[0], values[1], values[2], values[3]);
}

// ==========================================================
// [메인 함수]
// ==========================================================
int main() {
    init_platform();


    xil_printf("\r\n==============================================\r\n");
    xil_printf("   UART to CAN (Lightweight Version)\r\n");
    xil_printf("   Format: 5,1,90,3  (Comma Separated)\r\n");
    xil_printf("==============================================\r\n");

    // u32 tx_packet = 0;
    parse_and_send_manual();
    
    while(1) {

        uart_to_can();     // ★ 핵심
        // CPU 과부하 방지용 짧은 대기
        usleep(1000); 
    }

    cleanup_platform();
    return 0;
}