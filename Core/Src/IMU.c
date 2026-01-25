/*
 * IMU.c
 *
 *  Created on: Jan 25, 2026
 *      Author: user14
 */

#include "IMU.h"

// imu update period and error check
volatile uint8_t imu_tick = 0;
volatile uint32_t imu_err_cnt = 0;

// imu raw data
uint8_t mpu_raw[14];

// 물리값
float ax_g, ay_g, az_g;
float gx_dps, gy_dps, gz_dps;

// 바이어스(원시값 기준)
float gx_bias = 0, gy_bias = 0, gz_bias = 0;

// 상태
uint8_t gyro_cal_done = 0;

// roll, pitch
float roll = 0.0f;   // rad
float pitch = 0.0f;  // rad

// constants for roll and pitch calculation
float alpha = 0.98f;   // 필요하면 0.99~0.995로 조정

HAL_StatusTypeDef mpu_write8(uint8_t reg, uint8_t val)
{
    return HAL_I2C_Mem_Write(&hi2c1, MPU_ADDR, reg, I2C_MEMADD_SIZE_8BIT, &val, 1, 50);
}

HAL_StatusTypeDef mpu_read(uint8_t reg, uint8_t *buf, uint16_t len)
{
    return HAL_I2C_Mem_Read(&hi2c1, MPU_ADDR, reg, I2C_MEMADD_SIZE_8BIT, buf, len, 50);
}

HAL_StatusTypeDef mpu_read14(uint8_t *buf)
{
    return mpu_read(REG_ACCEL_XOUT_H, buf, 14);
}

void mpu_parse_raw(const uint8_t raw[14],
                          int16_t *ax, int16_t *ay, int16_t *az,
                          int16_t *temp,
                          int16_t *gx, int16_t *gy, int16_t *gz)
{
    *ax = (int16_t)((raw[0] << 8) | raw[1]);
    *ay = (int16_t)((raw[2] << 8) | raw[3]);
    *az = (int16_t)((raw[4] << 8) | raw[5]);
    *temp = (int16_t)((raw[6] << 8) | raw[7]);
    *gx = (int16_t)((raw[8] << 8) | raw[9]);
    *gy = (int16_t)((raw[10] << 8) | raw[11]);
    *gz = (int16_t)((raw[12] << 8) | raw[13]);
}

void gyro_calibrate(uint16_t samples)
{
    int32_t sumx = 0, sumy = 0, sumz = 0;

    for (uint16_t i = 0; i < samples; i++)
    {
        uint8_t raw[14];
        if (mpu_read(REG_ACCEL_XOUT_H, raw, 14) == HAL_OK)
        {
            int16_t ax, ay, az, temp, gx, gy, gz;
            mpu_parse_raw(raw, &ax, &ay, &az, &temp, &gx, &gy, &gz);

            sumx += gx;
            sumy += gy;
            sumz += gz;
        }
        HAL_Delay(2); // 약 500Hz급으로 대충 샘플링
    }

    gx_bias = (float)sumx / samples;
    gy_bias = (float)sumy / samples;
    gz_bias = (float)sumz / samples;

    gyro_cal_done = 1;
}
