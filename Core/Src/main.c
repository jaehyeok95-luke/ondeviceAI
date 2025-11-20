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
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "stepper.h"
#include "button.h"
#include "fnd.h"

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
	FIRSTFLOOR,
	SECONDFLOOR,
	THIRDFLOOR
};

volatile uint8_t currFloor = 0b001;			// 현재 층수
volatile uint8_t targetFloor = 0b000;		// 예약 층수
volatile uint32_t tickCount;				// 엘리베이터 도착한 후 다음 동작 대기시간 3초
volatile uint8_t movflag, flag1, flag2, flag3;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

void elevatorControl()
{
	if((movflag == 1) || (elevatorCurr == STOP))		// 포토인터럽트 발생 시 또는 예약층이 없는 경우 실행
	{
		elevatorPrev = elevatorCurr;
		movflag = 0;										// 플래그 초기화 -> 다음 인터럽트 대기

		if(!targetFloor)							// 예약층 없으면 정지
		{
			elevatorCurr = STOP;
			HAL_TIM_Base_Stop_IT(&htim11);
			__HAL_TIM_SET_COUNTER(&htim11,0);
		}
		else											// 예약층 있으면 동작 제어
		{
			if(elevatorPrev == DOWN) // 이전에 하강중이었나?
			{
				if(targetFloor & (currFloor - 1))	// 아래층 예약 있나?
					elevatorCurr = DOWN;
				else if(targetFloor & ~((currFloor << 1) - 1))	// 위층 예약 있나?
					elevatorCurr = UP;
				else
					elevatorCurr = STOP;
			}
			else if(elevatorPrev == UP)
			{
				if(targetFloor & ~((currFloor << 1) - 1))	// 위층 예약 있나?
					elevatorCurr = UP;
				else if(targetFloor & (currFloor - 1))	// 아래층 예약 있나?
					elevatorCurr = DOWN;
				else
					elevatorCurr = STOP;
			}
			else	// elevatorPrev == STOP
			{
				if(targetFloor & ~((currFloor << 1) - 1))	// 위층 예약 있나?
					elevatorCurr = UP;
				else if(targetFloor & (currFloor - 1))	// 아래층 예약 있나?
					elevatorCurr = DOWN;
				else
					elevatorCurr = STOP;
			}
		}
	}
	else	// 엘리베이터 다음동작 수행
	{
		if(!tickCount)		// 엘리베이터 문이 열려있지 않으면
			HAL_TIM_Base_Start_IT(&htim11);
		else		// 엘베 문이 열려있으면 엘베 대기.
		{
			HAL_TIM_Base_Stop_IT(&htim11);
			__HAL_TIM_SET_COUNTER(&htim11, 0);
		}
	}
}

void update_targetFloor()
{
	if(flag1)
	{
		if(led1 || firstUpLed)
		{
			if(led1)
			{
				led1 = !led1;
				HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, led1);  // LED 1 OFF
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}
			if(firstUpLed)
			{
				firstUpLed = !firstUpLed;
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, firstUpLed);
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}

			if(!led1 && !firstUpLed)
				targetFloor &= ~(1 << FIRSTFLOOR);		  // 1층 예약 해제
		}
		flag1 = 0;
	}

	else if(flag2)
	{
		if(led2 || secondUpLed || secondDnLed)
		{
			if(led2)
			{
				led2 = !led2;
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_8, led2);  // LED 2 OFF
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}
			if((secondUpLed) && (elevatorCurr != DOWN))
			{
				secondUpLed = !secondUpLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, secondUpLed);
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}
			if((secondDnLed) && (elevatorCurr != UP))
			{
				secondDnLed = !secondDnLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, secondDnLed);
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}

			if(!led2 && !secondUpLed && !secondDnLed)
				targetFloor &= ~(1 << SECONDFLOOR);		     // 2층 예약 해제
		}
		flag2 = 0;
	}

	else if(flag3)
	{
		if(led3 || thirdDnLed)
		{
			if(led3)
			{
				led3 = !led3;
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, led3);  // LED 3 OFF
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}
			if(thirdDnLed)
			{
				thirdDnLed = !thirdDnLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, thirdDnLed);
				HAL_TIM_Base_Start_IT(&htim10);				// 대기 3초
			}

			if(!led3 && !thirdDnLed)
				targetFloor &= ~(1 << THIRDFLOOR);		  	 // 3층 예약 해제
		}
		flag3 = 0;
	}
}

// 포토 인터럽트 함수 : Rising Edge trigger. 엘리베이터가 해당 층 도착 시 버튼 LED 를 끄게 동작.
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	movflag = 1;

	switch (GPIO_Pin)
	{
		case GPIO_PIN_8:  // 1층 도착 시 1층 버튼 LED OFF
			currFloor = 0b001;			// 현재 층 1층으로 갱신
			FND_WriteDigit(1);			// 1층 표시
			flag1 = 1;
		break;

		case GPIO_PIN_6:  // 2층 도착 시 2층 버튼 LED OFF
			currFloor = 0b010;
			FND_WriteDigit(2);			// 2층 표시
			flag2 = 1;
		break;

		case GPIO_PIN_5:  // 3층 도착 시 3층 버튼 LED OFF
			currFloor = 0b100;
			FND_WriteDigit(3);		// 3층 표시
			flag3 = 1;
		break;

		default:
		break;
	}
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	// 타이머 1ms 마다 호출 : 모터 동작
	if(htim -> Instance == TIM11)
	{
		stepMotor(motorState);

		if(motorState != 7)
			motorState++;
		else
			motorState = 0;
	}

	// 원하는 층 도착 후 문 여닫는 동작 대기 3초
	if(htim -> Instance == TIM10)
	{
		tickCount++;
		if(tickCount >= 3000)
		{
			HAL_TIM_Base_Stop_IT(&htim10);
			__HAL_TIM_SET_COUNTER(&htim10, 0);
			tickCount = 0;
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
  MX_TIM11_Init();
  MX_TIM10_Init();
  /* USER CODE BEGIN 2 */

  FND_WriteDigit(1);			// 초기 상태 : 1층 표시

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  // 층수 버튼을 눌러 LED 동작하는 함수
	  buttonState(currFloor, &targetFloor, &elevatorCurr);
	  outerButtonState(currFloor, &targetFloor, &elevatorCurr);
	  elevatorControl();
	  update_targetFloor();

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
  RCC_OscInitStruct.PLL.PLLN = 72;
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

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
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
