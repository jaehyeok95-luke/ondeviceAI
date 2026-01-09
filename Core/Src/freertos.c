/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
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
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "ultrasonic.h"
#include "stdio.h"
#include "stdlib.h"

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
/* USER CODE BEGIN Variables */

uint8_t avg;
extern uint8_t x_diff;
extern volatile uint32_t lastI2cErr;
extern volatile uint8_t i2cRestartReq;
extern uint8_t i2cRxData[32];
extern I2C_HandleTypeDef hi2c1;
extern volatile int16_t  g_xdiff;


/* USER CODE END Variables */
/* Definitions for ultrasonicTask */
osThreadId_t ultrasonicTaskHandle;
const osThreadAttr_t ultrasonicTask_attributes = {
  .name = "ultrasonicTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for motorTask */
osThreadId_t motorTaskHandle;
const osThreadAttr_t motorTask_attributes = {
  .name = "motorTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for i2c_reset */
osThreadId_t i2c_resetHandle;
const osThreadAttr_t i2c_reset_attributes = {
  .name = "i2c_reset",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void ultrasonicFunc(void *argument);
void motorFunc(void *argument);
void i2c_resetFunc(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of ultrasonicTask */
  ultrasonicTaskHandle = osThreadNew(ultrasonicFunc, NULL, &ultrasonicTask_attributes);

  /* creation of motorTask */
  motorTaskHandle = osThreadNew(motorFunc, NULL, &motorTask_attributes);

  /* creation of i2c_reset */
  i2c_resetHandle = osThreadNew(i2c_resetFunc, NULL, &i2c_reset_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_ultrasonicFunc */
/**
  * @brief  Function implementing the ultrasonicTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_ultrasonicFunc */
void ultrasonicFunc(void *argument)
{
  /* USER CODE BEGIN ultrasonicFunc */
  /* Infinite loop */
  for(;;)
  {
	  uint8_t direction;

	  direction = FRONT;
	  HCSR04_TRIGGER(direction);
	  osDelay(10);
  }
  /* USER CODE END ultrasonicFunc */
}

/* USER CODE BEGIN Header_motorFunc */
/**
* @brief Function implementing the motorTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_motorFunc */
void motorFunc(void *argument)
{
  /* USER CODE BEGIN motorFunc */
  /* Infinite loop */
  for(;;)
  {
	  // (PB1, PB15) - LEFT WHEEL, (PB14, PB13) - RIGHT WHEEL
	  TIM3->CCR1 = 60;
	  TIM3->CCR2 = 60;

	  if(g_xdiff > 0)				// 우회전 코너에 정상 진입한 경우. 우회전
	  {
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 0);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 1);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, 1);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, 0);
	  }
	  // 좌회전 코너에 이상 진입한 경우. 좌회전
	  else if(g_xdiff < 0)
	  {
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 1);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_1, 0);
		  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, 1);
	  }
	  osDelay(1);
  }
  /* USER CODE END motorFunc */
}

/* USER CODE BEGIN Header_i2c_resetFunc */
/**
* @brief Function implementing the i2c_reset thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_i2c_resetFunc */
void i2c_resetFunc(void *argument)
{
  /* USER CODE BEGIN i2c_resetFunc */
  /* Infinite loop */
  for(;;)
  {
	  if (i2cRestartReq)
	  {
	    i2cRestartReq = 0;

//	    HAL_I2C_DeInit(&hi2c1);
//	    HAL_I2C_Init(&hi2c1);
	    HAL_I2C_Slave_Receive_IT(&hi2c1, (uint8_t*)i2cRxData, I2C_FRAME_LEN);
	  }
    osDelay(10);
  }
  /* USER CODE END i2c_resetFunc */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

