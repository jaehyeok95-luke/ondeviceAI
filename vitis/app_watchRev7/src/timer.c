/******************************************************************************
 * soc_ctimer_lcd_project - Vitis application (LCD only, no FND)
 *
 * Goals
 *  1) Countdown timer on LCD (I2C LCD via custom IP: myip_iic_cntr)
 *  2) When alarm time is reached, HW alarm output (alarm_0) should assert
 *     -> map alarm_0 to Basys3 LED0 in Vivado/XDC if you want LED0 to light.
 *  3) Reset (BTNL + BTNR together) sets 00:00 and clears alarm.
 *
 * Button mapping (Basys3 UDLR 4bits)
 *   BTNU : Start
 *   BTNL : Seconds +1 (only in SET mode)
 *   BTNR : Minutes +1 (only in SET mode)
 *   BTND : Alarm off / Stop (silence alarm, go back to SET mode)
 *   BTNL+BTNR : Reset to 00:00
 ******************************************************************************/

/* =========================
 * HW Base Addresses
 * ========================= */
#include "timer.h"
#include <xil_printf.h>




/* =========================
 * LCD low-level
 * ========================= */
uint32_t lcd_busy(void)
{
    return Xil_In32(LCD_IP_BASEADDR + LCD_BUSY) & 0x1u;
}

int lcd_wait_ready(uint32_t timeout_us)
{
    while (timeout_us--) {
        if (!lcd_busy()) return 1;
        usleep(1);
    }
    return 0;
}

int lcd_send_byte(uint8_t byte, int rs)
{
    if (!lcd_wait_ready(50000)) return 0;

    Xil_Out32(LCD_IP_BASEADDR + LCD_REG0, (uint32_t)byte);

    uint32_t ctrl = rs ? (1u << 1) : 0u;

    /* send strobe: 0 -> 1 (posedge) */
    Xil_Out32(LCD_IP_BASEADDR + LCD_REG1, ctrl);
    Xil_Out32(LCD_IP_BASEADDR + LCD_REG1, ctrl | 0x1u);

    return 1;
}

void lcd_cmd(uint8_t c)      { (void)lcd_send_byte(c, 0); }
void lcd_putc(char c)       { (void)lcd_send_byte((uint8_t)c, 1); }

void lcd_puts(const char *s)
{
    while (*s) lcd_putc(*s++);
}

void lcd_goto(uint8_t row, uint8_t col)
{
    uint8_t addr = (row == 0 ? 0x00 : 0x40) + col;
    lcd_cmd((uint8_t)(0x80 | addr));
}

void lcd_write_line(uint8_t row, const char *text)
{
    char buf[17];
    int i = 0;

    for (; i < 16; i++) {
        char c = text[i];
        if (c == '\0') break;
        buf[i] = c;
    }
    for (; i < 16; i++) buf[i] = ' ';
    buf[16] = '\0';

    lcd_goto(row, 0);
    lcd_puts(buf);
}

void lcd_init_soft(void)
{
    /*
     * NOTE:
     *  - myip_iic_cntr (i2c_txtlcd_top) already runs the proper HD44780 4-bit init
     *    sequence after reset: 0x33,0x32,0x28,0x0F,0x01,0x06.
     *  - So here we only wait until that HW init is finished, then set a clean UI.
     */

    if (!lcd_wait_ready(2000000)) { /* up to 2 seconds */
        xil_printf("LCD: init wait timeout (check I2C addr/wiring)\r\n");
    }

    lcd_cmd(0x0C); /* Display ON, cursor OFF */
    lcd_cmd(0x01); /* Clear display */
    usleep(2000);
    lcd_cmd(0x06); /* Entry mode: increment */

    lcd_write_line(0, "MODE:SET");
    lcd_write_line(1, "00:00");
}

/* =========================
 * Timer helpers
 * ========================= */
void cooktimer_start_pulse(void)
{
    cooktimer[CT_REG_INIT_SEC] = set_sec;
    cooktimer[CT_REG_INIT_MIN] = set_min;

    /* pulse bit0 */
    cooktimer[CT_REG_CTRL] &= ~0x1u;
    cooktimer[CT_REG_CTRL] |=  0x1u;
    cooktimer[CT_REG_CTRL] &= ~0x1u;
}

void cooktimer_alarmoff_pulse(void)
{
    /* pulse bit1 */
    cooktimer[CT_REG_CTRL] = (cooktimer[CT_REG_CTRL] & 0x3u) | 0x2u;
    cooktimer[CT_REG_CTRL] &= ~0x2u;
}

void cooktimer_reset_to_zero(void)
{
    running = 0;
    set_min = 0;
    set_sec = 0;

    cooktimer[CT_REG_CTRL]     = 0;
    cooktimer[CT_REG_INIT_SEC] = 0;
    cooktimer[CT_REG_INIT_MIN] = 0;

    cooktimer_alarmoff_pulse(); /* clear latched alarm if any */
}

/* =========================
 * main
 * ========================= */
int timer(unsigned int raw_btn)
{
        /* Read current time from cooktimer IP */
        uint8_t mm = (uint8_t)(cooktimer[CT_REG_CUR_MIN] & 0xFFu);
        uint8_t ss = (uint8_t)(cooktimer[CT_REG_CUR_SEC] & 0xFFu);
            
        /* Poll buttons as a fallback (in case GPIO interrupt isn't wired/enabled) */
        if (raw_btn != btn_last_raw) {
            btn_last_raw = raw_btn;
            btn_snapshot = raw_btn;
        }
        /* Handle button event (interrupt-driven) */


            uint32_t v = btn_snapshot & 0xFu;

            /* crude debounce */
            usleep(30000);

            if ((v & BTN_RESET_MASK) == BTN_RESET_MASK) {
                cooktimer_reset_to_zero();
                xil_printf("RESET -> 00:00\r\n");
            } else {
                if (!running) {
                    /* SET mode */
                    if (v & BTN_MIN_UP_MASK) {
                        set_min = (set_min >= 99) ? 0 : (uint8_t)(set_min + 1);
                        cooktimer[CT_REG_INIT_MIN] = set_min;
                    }
                    if (v & BTN_SEC_UP_MASK) {
                        set_sec = (set_sec >= 59) ? 0 : (uint8_t)(set_sec + 1);
                        cooktimer[CT_REG_INIT_SEC] = set_sec;
                    }
                    if (v & BTN_START_MASK) {
                        running = 1;
                        cooktimer_start_pulse();
                    }
                }
                else{
                    /* Stop / alarm off (works in both modes) */
                    if ((v & BTN_START_MASK) && (mm == 0) && (ss == 0)) {
                        cooktimer_alarmoff_pulse();
                        running = 0;
                    }
                }
            }

        /* Decide UI time to show */
        uint8_t show_mm = running ? mm : set_min;
        uint8_t show_ss = running ? ss : set_sec;

        /* Detect alarm condition by reaching 00:00 while running
           (HW alarm_0 should assert; map it to LED0 in Vivado if desired) */
        uint8_t alarm = (running && (mm == 0) && (ss == 0)) ? 1 : 0;

        /* Update LCD only when something changed */
        // 아래 필요 없어진 부분임.
            last_mm = show_mm;
            last_ss = show_ss;
            last_mode = running;
            last_alarm = alarm;

            char line0[17];
            char line1[17];

            if (alarm) {
                snprintf(line0, sizeof(line0), "MODE:ALARM     ");
            } else if (running) {
                snprintf(line0, sizeof(line0), "MODE:RUN       ");
            } else {
                snprintf(line0, sizeof(line0), "MODE:SET       ");
            }

            snprintf(line1, sizeof(line1), "%02u:%02u          ", (unsigned)show_mm, (unsigned)show_ss);

            lcd_write_line(0, line0);
            lcd_write_line(1, line1);

        usleep(10000);
        
    return 0;
}