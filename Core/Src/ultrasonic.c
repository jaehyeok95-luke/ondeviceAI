/*
 * ultrasonic.c
 *
 *  Created on: Nov 4, 2025
 *      Author: user14
 */
#include "ultrasonic.h"

uint8_t dist1_buf[FILTER_COUNT] = {0};
uint8_t dist2_buf[FILTER_COUNT] = {0};
uint8_t dist3_buf[FILTER_COUNT] = {0};
uint8_t idx = 0;

uint8_t get_avg(uint8_t *buf)
{
    uint16_t sum = 0;
    for (int i = 0; i < FILTER_COUNT; i++)
    	sum += buf[i];

    return (uint8_t)(sum / FILTER_COUNT);
}



