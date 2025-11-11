/*
 * pid.c
 *
 *  Created on: Nov 5, 2025
 *      Author: user14
 */

#include "pid.h"

float Kp = 0.001f;    // 비례 이득 (반응 강도)
float Ki = 0;   // 적분 이득 (오차 누적 보정)
float Kd = 0;    // 미분 이득 (속도 변화 억제)

float integral = 0;
float prevError = 0;

const int CCR_MAX = 100; // 타이머 ARR값 기반

void pidControl(float setpoint, float *pwm)
{
    // PID 연산 (각 센서별)
    float error = setpoint - *pwm;

    integral += error;

    float derivative = error - prevError;

    prevError = error;

    // PID 출력 계산
    float output = Kp * error + Ki * integral + Kd * derivative;

    // 듀티 변환
    *pwm += output;

    // 제한 (0~ARR)
    if (*pwm < 30) *pwm = 30;
    if (*pwm > CCR_MAX) *pwm = CCR_MAX;
}

