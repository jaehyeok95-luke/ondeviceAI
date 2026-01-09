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
#include "cmsis_os.h"
#include "i2c.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "string.h"
#include "stdio.h"
#include "delay_us.h"
#include "ultrasonic.h"

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


volatile uint32_t lastI2cErr = 0;
volatile uint8_t i2cRestartReq = 0;


// ultrasonic
// 정면
uint16_t IC_Value1 = 0;
uint16_t IC_Value2 = 0;
uint16_t echoTime = 0;
uint8_t captureFlag = 0;
uint8_t distance = 0;

uint8_t i2cRxData[32];

volatile uint16_t g_cx = CX_CENTER;
volatile int16_t  g_xdiff = 0;
volatile uint8_t  g_frame_ready = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);
/* USER CODE BEGIN PFP */

void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c)
{
  if (hi2c->Instance != I2C1) return;

  lastI2cErr = HAL_I2C_GetError(hi2c);
  i2cRestartReq = 1;  // RTOS task에서 복구
}


//void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c)
//{
//	HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
//	HAL_I2C_Slave_Receive_IT(&hi2c1, (uint8_t *)i2cRxData, 6);
//}

void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c)
{
  if (hi2c->Instance != I2C1) return;

  // frame check
  if (i2cRxData[0] == 0xAA && i2cRxData[5] == 0x55)
  {
    uint16_t cx = ((uint16_t)i2cRxData[1] << 8) | i2cRxData[2];
    g_cx = cx;
    g_xdiff = (int16_t)cx - (int16_t)CX_CENTER;  // signed
    g_frame_ready = 1;

    HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5); // 디버그용(선택)
  }

  // 항상 다음 수신 재등록 (길이 6 고정!)
  HAL_I2C_Slave_Receive_IT(&hi2c1, (uint8_t*)i2cRxData, I2C_FRAME_LEN);
}

void HCSR04_TRIGGER(uint8_t direction)
{
	if(direction == FRONT)
	{
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, 0);
		delay_us(1);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, 1);
		delay_us(10);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, 0);

		HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);
		__HAL_TIM_ENABLE_IT(&htim1, TIM_IT_CC1);
	}
}

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_2)
	{
		if(captureFlag == 0)
		{
			IC_Value1 = HAL_TIM_ReadCapturedValue(&htim1, TIM_CHANNEL_1);
			captureFlag = 1;			// 캡쳐 플래그 set(캡쳐 했음)
			__HAL_TIM_SET_CAPTUREPOLARITY(&htim1, TIM_CHANNEL_1, TIM_INPUTCHANNELPOLARITY_FALLING);			// falling edge 감지로 변경
		}
		else if(captureFlag == 1)
		{
			IC_Value2 = HAL_TIM_ReadCapturedValue(&htim1, TIM_CHANNEL_1);
			__HAL_TIM_SET_CAPTUREPOLARITY(&htim1, TIM_CHANNEL_1, TIM_INPUTCHANNELPOLARITY_RISING);		// 다시 rising edge 감지로 변경

			if(IC_Value2 > IC_Value1)
			{
				echoTime = IC_Value2 - IC_Value1;
			}
			else if(IC_Value2 < IC_Value1)
			{
				echoTime = (0xffff - IC_Value1) + IC_Value2;
			}
			distance = echoTime / 58;
			captureFlag = 0;

			__HAL_TIM_DISABLE_IT(&htim1, TIM_IT_CC1);
			__HAL_TIM_CLEAR_IT(&htim1, TIM_IT_CC1);
			HAL_TIM_IC_Stop_IT(&htim1, TIM_CHANNEL_1);
		}
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
  MX_TIM3_Init();
  MX_TIM11_Init();
  MX_TIM1_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */

  // 초음파 센서 trigger 관련 딜레이 위한 타이머11 동작
  HAL_TIM_Base_Start(&htim11);

  // pwm 신호용 채널
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_2);

  // raspi i2c 통신
	HAL_I2C_Slave_Receive_IT(&hi2c1, (uint8_t *)i2cRxData, I2C_FRAME_LEN);

  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();  /* Call init function for freertos objects (in cmsis_os2.c) */
  MX_FREERTOS_Init();

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
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
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM10 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM10)
  {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

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
