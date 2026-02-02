#include <stdint.h>
#include <stdio.h>
#include <sys/_types.h>
#include <xil_exception.h>
#include <xil_printf.h>
#include <xil_types.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "string.h"
#include "xintc.h"
#include "xuartlite_l.h"
#include "xil_io.h"

#define UART_BASEADDR XPAR_AXI_UARTLITE_0_BASEADDR
#define IIC_BASEADDR  XPAR_MYIP_IIC_CNTR_0_BASEADDR
#define WATCH_BASEADDR XPAR_MYIP_KOREAWATCH_0_BASEADDR

extern u8 hour, min, sec;
extern char time_str[20];

////////////////////////////////////////////////
#define btn_addr    XPAR_AXI_GPIO_0_BASEADDR
#define stwatch_addr  XPAR_MYIP_STOPWATCH_0_BASEADDR
#define lcd_addr    XPAR_MYIP_IIC_CNTR_0_BASEADDR
#define intc_addr   XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR


// INT vector 에 저장할 ISR addr
#define BTN_VEC_ID  XPAR_FABRIC_AXI_GPIO_0_INTR

extern unsigned int *stwatch_cntr;
extern unsigned int *lcd_cntr;

extern XGpio gpio_device;
extern XIntc intc;

extern u8 btn_flag;
extern u8 cap_min;
extern u8 cap_sec;
extern u8 cap_csec;
extern u8 diff_min;
extern u8 diff_sec;
extern u8 diff_csec;
extern u8 sign_flag;    // read sign flag

extern u8 lap_count;
//////////////////////////////////////////////////

#define COOKTIMER_BASEADDR   XPAR_MYIP_TIMER_0_BASEADDR

/* Some BSPs use DEVICE_ID (classic), others use BASEADDR (SDT). */
#ifdef XPAR_XGPIO_0_DEVICE_ID
#define BTN_GPIO_ID          XPAR_XGPIO_0_DEVICE_ID
#else
#define BTN_GPIO_ID          0
#endif

#ifdef XPAR_MICROBLAZE_RISCV_0_AXI_INTC_DEVICE_ID
#define INTC_ID              XPAR_MICROBLAZE_RISCV_0_AXI_INTC_DEVICE_ID
#else
#define INTC_ID              0
#endif

#define LCD_IP_BASEADDR      XPAR_MYIP_IIC_CNTR_0_BASEADDR

/* =========================
 * GPIO / Button mapping
 * ========================= */
#define BTN_CHANNEL          1
#define GPIO_INTR_MASK       XGPIO_IR_CH1_MASK

extern volatile uint32_t btn_snapshot;
extern volatile uint32_t btn_last_raw; /* for polling fallback / de-dup */

/* =========================
 * Mapped devices
 * ========================= */
extern volatile uint32_t *cooktimer;

    /* LCD update cache */
extern    uint8_t last_mm; 
extern  uint8_t last_ss;
extern    uint8_t last_mode;
extern    uint8_t last_alarm;

/* =========================
 * SW state
 * ========================= */
extern uint8_t set_sec;
extern uint8_t set_min;
extern uint8_t running;