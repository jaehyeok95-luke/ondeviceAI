#include "main.h"
#include <sys/_types.h>

#define BTN_START_MASK       0x1  /* BTNU */
#define BTN_SEC_UP_MASK      0x2  /* BTNL */
#define BTN_MIN_UP_MASK      0x4  /* BTNR */
#define BTN_ALARM_OFF_MASK   0x8  /* BTND */
#define BTN_RESET_MASK       (BTN_SEC_UP_MASK | BTN_MIN_UP_MASK) /* BTNL+BTNR */

/* =========================
 * Cooktimer register map (word addressing via uint32_t*)
 * =========================
 * cooktimer[0] : init seconds (0..59)
 * cooktimer[1] : init minutes (0..99)  (your IP supports up to 99 in UI)
 * cooktimer[2] : control (pulse bits)
 *   - bit0: start pulse
 *   - bit1: alarm_off pulse
 * cooktimer[3] : current seconds
 * cooktimer[4] : current minutes
 */
#define CT_REG_INIT_SEC   0
#define CT_REG_INIT_MIN   1
#define CT_REG_CTRL       2
#define CT_REG_CUR_SEC    3
#define CT_REG_CUR_MIN    4

/* =========================
 * LCD IP register offsets (myip_iic_cntr)
 * =========================
 * REG0 (0x00): byte data
 * REG1 (0x04): control
 *   - bit0: send strobe (rising edge)
 *   - bit1: RS (0=command, 1=data)
 * BUSY (0x08): bit0=busy
 */
#define LCD_REG0   0x00
#define LCD_REG1   0x04
#define LCD_BUSY   0x08

int timer(unsigned int raw_btn);

/* Initial state */
void cooktimer_reset_to_zero(void);
