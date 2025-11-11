/*
 * delay_us.h
 *
 *  Created on: Oct 16, 2025
 *      Author: user14
 */

#ifndef INC_DELAY_US_H_
#define INC_DELAY_US_H_

// #include "main.h"
#include "stm32f4xx_hal.h"		// #include "main.h" 와 동일
#include "tim.h"

void delay_us(uint16_t us);		// 65535 까지만 세기 때문에 16bit 자료형 선언

#endif /* INC_DELAY_US_H_ */
