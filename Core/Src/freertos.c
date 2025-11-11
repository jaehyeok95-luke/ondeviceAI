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
#include "I2C_LCD.h"
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

uint8_t avg1, avg2, avg3;

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
/* Definitions for lcdTask */
osThreadId_t lcdTaskHandle;
const osThreadAttr_t lcdTask_attributes = {
  .name = "lcdTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void ultrasonicFunc(void *argument);
void motorFunc(void *argument);
void lcdFunc(void *argument);

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

  /* creation of lcdTask */
  lcdTaskHandle = osThreadNew(lcdFunc, NULL, &lcdTask_attributes);

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

	  direction = LEFT;
	  HCSR04_TRIGGER(direction);
	  osDelay(10);

	  direction = RIGHT;
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
	  // 1 : 우측, 2 : 정면, 3 : 좌측
	  dist1_buf[idx] = distance1;
	  dist2_buf[idx] = distance2;
	  dist3_buf[idx] = distance3;

	  idx = (idx + 1) % FILTER_COUNT;

	  avg1 = get_avg(dist1_buf);	// 우측 거리
	  avg2 = get_avg(dist2_buf);	// 정면 거리
	  avg3 = get_avg(dist3_buf);	// 좌측 거리

	  // 정면거리 30cm 이상으로 직진 가능한 경우
	  if(avg2 > 30)
	  {
		  if(avg1 < 20)	// 직진 중 우측 벽에 붙은 경우
		  {
			  TIM1->CCR1 = 50;
			  TIM1->CCR2 = 50;

			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 1);
			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 0);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 0);
		  }
		  else if(avg3 < 20)	// 직진 중 좌측 벽에 붙은 경우
		  {
			  TIM1->CCR1 = 50;
			  TIM1->CCR2 = 50;

			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 0);
			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 1);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 0);
		  }
		  else	// 정상 상태면 직진
		  {
			  TIM1->CCR1 = 40;
			  TIM1->CCR2 = 40;

			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 1);
			  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 1);
			  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 0);
		  }
	  }
	  // 정면 거리가 30cm 이하로 회전 판단이 필요한 경우
	  else if(avg2 < 30)
	  {
		  TIM1->CCR1 = 50;
		  TIM1->CCR2 = 50;

		  if((avg2 + avg3)/2 < avg1)	// 우회전 코너 판단 시작(우측 센서값 큰 경우)
		  {
			  if(avg1 > (avg2 + avg3))				// 우회전 코너에 정상 진입한 경우. 우회전
			  {
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 0);
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 1);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 1);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 0);
			  }
			  // 좌회전 코너에 이상 진입한 경우. 좌회전
			  else
			  {
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 1);
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 0);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 1);
			  }
		  }
		  else if((avg2 + avg1)/2 < avg3)	// 좌회전 코너 판단 시작(좌측 센서값 큰 경우)
		  {
			  if(avg3 > (avg1 + avg2))	// 좌회전 코너 정상 진입
			  {
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 1);
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 0);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 0);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 1);
			  }
			  // 우회전 코너에 이상 진입한 경우. 우회전
			  else
			  {
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, 0);
				  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, 1);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3, 1);
				  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2, 0);
			  }
		  }
	  }
	  osDelay(30);
  }
  /* USER CODE END motorFunc */
}

/* USER CODE BEGIN Header_lcdFunc */
/**
* @brief Function implementing the lcdTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_lcdFunc */
void lcdFunc(void *argument)
{
  /* USER CODE BEGIN lcdFunc */
  /* Infinite loop */
  for(;;)
  {
	  char temp[50];

	  sprintf(temp, "R(%3d) F(%3d) L(%3d)",avg1,avg2,avg3);

	  *(temp + 13) = NULL;
	  move_cursor(0, 0);
	  lcd_string(temp);
	  move_cursor(1, 0);
	  lcd_string(temp + 14);

	  osDelay(100);
  }
  /* USER CODE END lcdFunc */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

