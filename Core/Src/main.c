/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "IMU.h"
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "PID.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */



/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
enum{
	RELEASED,
	PUSHED
};

uint8_t prevState = RELEASED;
uint8_t currState = RELEASED;

float dt = 0.004f;     // 250Hz이면 1/250 = 0.004

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */


//void ESC_Calibration()
//{
//	TIM11 -> CCR1 = 1000;
//	HAL_Delay(3000);
//
//	TIM11 -> CCR1 = 1100;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1200;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1300;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1400;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1500;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1600;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1700;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1800;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1900;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 2000;
//	HAL_Delay(1000);
//	TIM11 -> CCR1 = 1000;
//	HAL_Delay(1000);
//}
//

//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//{
//	if(GPIO_Pin == GPIO_PIN_7)
//	{
//		rdy_flag = 1;
//	}
//}

static void uart_print(const char *s)
{
  HAL_UART_Transmit(&huart2, (uint8_t*)s, strlen(s), 100);
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
    if (htim->Instance == TIM3)
    {
        imu_tick = 1;
    }
}

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */


  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM11_Init();
  MX_I2C1_Init();
  MX_USART2_UART_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */

  HAL_TIM_Base_Start_IT(&htim3);

//  HAL_TIM_PWM_Start(&htim11, TIM_CHANNEL_1);
//  TIM11 -> CCR1 = 2500;

  // who_am_I
  uint8_t who = 0;
  if (mpu_read(REG_WHO_AM_I, &who, 1) != HAL_OK) Error_Handler();
  if (who != 0x68) Error_Handler();

  // Wake up
  if (mpu_write8(REG_PWR_MGMT_1, 0x00) != HAL_OK) Error_Handler();
  HAL_Delay(50);

  uint32_t last_print = HAL_GetTick();

  // calibration while dron is stopping
  uart_print("Gyro calibrating... keep still\r\n");
  gyro_calibrate(1000); // 약 2초 정도
  char msg[80];
  sprintf(msg, "Gyro bias raw: %.2f %.2f %.2f\r\n", gx_bias, gy_bias, gz_bias);
  uart_print(msg);


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
//	  currState = (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13) == 0)?PUSHED:RELEASED;
//
//	  if((prevState == RELEASED) && (currState == PUSHED))
//	  {
//		  HAL_Delay(20);
//		  if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13) == 0)
//			  ESC_Calibration();
//	  }
//	  prevState = currState;
//
	  if (imu_tick)
	      {
	          imu_tick = 0;

	          HAL_StatusTypeDef st = mpu_read14(mpu_raw);
	          if (st != HAL_OK)
	          {
	              imu_err_cnt++;

	              // 아주 간단한 복구(1단계용)
	              HAL_I2C_DeInit(&hi2c1);
	              HAL_I2C_Init(&hi2c1);
	              mpu_write8(REG_PWR_MGMT_1, 0x00);
	          }

	          int16_t ax, ay, az, temp, gx, gy, gz;
	          mpu_parse_raw(mpu_raw, &ax, &ay, &az, &temp, &gx, &gy, &gz);

	          // accel [g]
	          ax_g = ax / 16384.0f;
	          ay_g = ay / 16384.0f;
	          az_g = az / 16384.0f;

	          // gyro [deg/s] (bias 보정)
	          gx_dps = (gx - gx_bias) / 131.0f;
	          gy_dps = (gy - gy_bias) / 131.0f;
	          gz_dps = (gz - gz_bias) / 131.0f;

	          // gyro deg/s -> rad/s
	          float gx_rad = gx_dps * DEG2RAD;
	          float gy_rad = gy_dps * DEG2RAD;
	          float gz_rad = gz_dps * DEG2RAD; // yaw는 지금 안 써도 됨

	          // accel 기반 각도 (rad)
	          float roll_acc  = atan2f(ay_g, az_g);
	          float pitch_acc = atan2f(-ax_g, sqrtf(ay_g*ay_g + az_g*az_g));

	          // 1) gyro 적분 (예측)
	          roll  += gx_rad * dt;
	          pitch += gy_rad * dt;

	          // 2) complementary fusion (보정)
	          roll  = alpha * roll  + (1.0f - alpha) * roll_acc;
	          pitch = alpha * pitch + (1.0f - alpha) * pitch_acc;


	      }

	      // UART 출력은 10Hz 정도로만 (100ms)
	      if (HAL_GetTick() - last_print >= 100)
	      {
	          last_print = HAL_GetTick();

	          int16_t ax = (int16_t)((mpu_raw[0] << 8) | mpu_raw[1]);
	          int16_t ay = (int16_t)((mpu_raw[2] << 8) | mpu_raw[3]);
	          int16_t az = (int16_t)((mpu_raw[4] << 8) | mpu_raw[5]);
	          int16_t gx = (int16_t)((mpu_raw[8] << 8) | mpu_raw[9]);

//	          sprintf(msg, "ax=%d ay=%d az=%d gx=%d err=%lu\r\n",
//	                  ax, ay, az, gx, (unsigned long)imu_err_cnt);
//	          sprintf(msg, "gx_dps=%.2f gy_dps=%.2f gz_dps=%.2f err=%lu\r\n",
//	          	                  gx_dps, gy_dps, gz_dps, (unsigned long)imu_err_cnt);
//	          HAL_UART_Transmit(&huart2, (uint8_t*)msg, strlen(msg), 50);

//	          sprintf(msg, "roll=%.2f deg, pitch=%.2f deg\r\n", roll*RAD2DEG, pitch*RAD2DEG);
//	          uart_print(msg);

	          PID_t pid_roll_rate = {
	              .kp = 0.15f,
	              .ki = 0.0f,
	              .kd = 0.000f,
	              .out_limit = 300.0f
	          };

	          PID_t pid_roll_angle = {
	              .kp = 4.0f,
	              .ki = 0.0f,
	              .kd = 0.0f,
	              .out_limit = 200.0f   // rate_cmd 제한 (deg/s)
	          };

	          float roll_target = 0.0;
	          float roll_angle = roll*RAD2DEG;
	          float angle_error = roll_target - roll_angle;

//	          float roll_rate_cmd = 0.0f;   // deg/s (rate PID 테스트용)
	          float roll_rate = gx_dps;     // 현재 각속도
	          float roll_rate_cmd = angle_pid_update(&pid_roll_angle, angle_error);
	          float rate_error = roll_rate_cmd - roll_rate;

	          float roll_pid_out = rate_pid_update(&pid_roll_rate,
	                                          rate_error,
	                                          dt);
//	          sprintf(msg, "rate=%.2f, pid_out=%.2f\r\n",
//                      gx_dps, roll_pid_out);
//	          uart_print(msg);

	          sprintf(msg, "angle=%.2f, rate_cmd=%.2f, rate=%.2f, pid=%.2f\r\n",
	                  roll_angle,
	                  roll_rate_cmd,
	                  roll_rate,
	                  roll_pid_out);
	          uart_print(msg);


	      }

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 100;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
