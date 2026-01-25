/*
 * PID.c
 *
 *  Created on: Jan 25, 2026
 *      Author: user14
 */

#include "PID.h"

float rate_pid_update(PID_t *pid, float error, float dt)
{
    // P
    float p = pid->kp * error;

    // I
    pid->integrator += pid->ki * error * dt;

    // Anti-windup
    if (pid->integrator > pid->out_limit)
        pid->integrator = pid->out_limit;
    else if (pid->integrator < -pid->out_limit)
        pid->integrator = -pid->out_limit;

    // D
    float d = pid->kd * (error - pid->prev_error) / dt;
    pid->prev_error = error;

    return p + pid->integrator + d;
}

float angle_pid_update(PID_t *pid, float error)
{
    pid->integrator += error * dt;

    float out =
        pid->kp * error +
        pid->ki * pid->integrator;

    // 출력 제한
    if (out > pid->out_limit) out = pid->out_limit;
    if (out < -pid->out_limit) out = -pid->out_limit;

    return out;
}

