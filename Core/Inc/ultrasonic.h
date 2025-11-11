/*
 * ultrasonic.h
 *
 *  Created on: Nov 4, 2025
 *      Author: user14
 */

#ifndef INC_ULTRASONIC_H_
#define INC_ULTRASONIC_H_

#include "main.h"

#define FILTER_COUNT 5

enum{
	LEFT,
	RIGHT,
	FRONT
};

extern uint8_t dist1_buf[FILTER_COUNT];
extern uint8_t dist2_buf[FILTER_COUNT];
extern uint8_t dist3_buf[FILTER_COUNT];
extern uint8_t idx;

uint8_t get_avg(uint8_t *buf);

#endif /* INC_ULTRASONIC_H_ */
