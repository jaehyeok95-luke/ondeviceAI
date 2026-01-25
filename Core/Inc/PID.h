/*
 * PID.h
 *
 *  Created on: Jan 25, 2026
 *      Author: user14
 */

#ifndef INC_PID_H_
#define INC_PID_H_

#include "main.h"

typedef struct {
    float kp;
    float ki;
    float kd;

    float integrator;
    float prev_error;
    float out_limit;
} PID_t;

float rate_pid_update(PID_t *pid, float error, float dt);
float angle_pid_update(PID_t *pid, float error);


#endif /* INC_PID_H_ */
