/*
 * IMU.h
 *
 *  Created on: Jan 25, 2026
 *      Author: user14
 */

#ifndef INC_IMU_H_
#define INC_IMU_H_

#include "main.h"

#define MPU_ADDR        (0x68 << 1)   // AD0=0이면 0x68, HAL은 <<1 형태 사용
#define REG_WHO_AM_I    0x75
#define REG_PWR_MGMT_1  0x6B
#define REG_ACCEL_XOUT_H 0x3B
#define RAD2DEG (57.2957795f)
#define DEG2RAD (0.0174532925f)

// i2c
extern I2C_HandleTypeDef hi2c1;

// imu update period and error check
extern volatile uint8_t imu_tick;
extern volatile uint32_t imu_err_cnt;

// imu raw data
extern uint8_t mpu_raw[14];

// 물리값
extern float ax_g, ay_g, az_g;
extern float gx_dps, gy_dps, gz_dps;

// 바이어스(원시값 기준)
extern float gx_bias, gy_bias, gz_bias;

// 상태
extern uint8_t gyro_cal_done;

// roll, pitch
extern float roll;   // rad
extern float pitch;  // rad

// constants for roll and pitch calculation
extern float alpha;   // 필요하면 0.99~0.995로 조정

HAL_StatusTypeDef mpu_write8(uint8_t reg, uint8_t val);
HAL_StatusTypeDef mpu_read(uint8_t reg, uint8_t *buf, uint16_t len);
HAL_StatusTypeDef mpu_read14(uint8_t *buf);
void mpu_parse_raw(const uint8_t raw[14],
                          int16_t *ax, int16_t *ay, int16_t *az,
                          int16_t *temp,
                          int16_t *gx, int16_t *gy, int16_t *gz);
void gyro_calibrate(uint16_t samples);


#endif /* INC_IMU_H_ */
