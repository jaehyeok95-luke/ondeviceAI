#include "button.h"
#include "stepper.h"

// 	버튼 상태(누름, 안누름) 표시
enum{
	PUSHED,
	RELEASED
};

// 1층, 2층, 3층 버튼 이전 상태
uint8_t prevState1 = RELEASED;
uint8_t prevState2 = RELEASED;
uint8_t prevState3 = RELEASED;

uint8_t firstUpPrev = RELEASED;
uint8_t secondUpPrev = RELEASED;
uint8_t secondDnPrev = RELEASED;
uint8_t thirdDnPrev = RELEASED;

// 1층, 2층, 3층 버튼 현재 상태
uint8_t currState1, currState2, currState3;

uint8_t firstUpCurr, secondUpCurr, secondDnCurr, thirdDnCurr;

// 1층, 2층, 3층 버튼 LED 상태
uint8_t led1, led2, led3;

uint8_t firstUpLed, secondUpLed, secondDnLed, thirdDnLed;

void buttonState(uint8_t currFloor, uint8_t *targetFloor, uint8_t *elevatorCurr)
{
	// 버튼 누르는 동작 감지
	currState1 = (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4) == 0) ? PUSHED : RELEASED;
	currState2 = (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_5) == 0) ? PUSHED : RELEASED;
	currState3 = (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 0) ? PUSHED : RELEASED;

	// 1층 버튼이 눌리면
	if((prevState1 == RELEASED) && (currState1 == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4) == 0)
		{
			// 1층 버튼 LED ON (or 눌러져있었는데 다시 누르면 OFF)
			if((currFloor == 0b001) && (*elevatorCurr == STOP)) // 현재 1층에 정지해 있으면 1층 버튼 불 동작 X
			{
				HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, 0);
			}
			else
			{
				led1 = !led1;
				HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, led1);	// 현재 층수와 다른 층수 누르면 버튼 불 on/off 가능
				if(led1)
					*targetFloor |= 0b001;						// 1층 예약
				else
					*targetFloor &= ~0b001;						// 1층 예약 도중 해제
			}
		}
	}

	// 2층 버튼이 눌리면
	if((prevState2 == RELEASED) && (currState2 == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_5) == 0)
		{
			if((currFloor == 0b010) && (*elevatorCurr == STOP)) // 현재 2층에 정지해있으면 2층 버튼불 동작 x
			{
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_8, 0);
			}
			else
			{
				led2 = !led2;
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_8, led2);	// 현재 층수가 2층이 아니면 버튼 불 on/off 가능
				if(led2)
					*targetFloor |= 0b010;						// 2층 예약
				else
					*targetFloor &= ~0b010;						// 2층 예약 도중 해제
			}
		}
	}

	// 3층 버튼이 눌리면
	if((prevState3 == RELEASED) && (currState3 == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3) == 0)
		{
			if((currFloor == 0b100) && (*elevatorCurr == STOP)) // 현재 3층에 정지해있으면 3층 버튼 불 동작 x
			{
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, 0);
			}
			else
			{
				led3 = !led3;

				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_9, led3);	// 현재 층수가 3층이 아니면 버튼 불 on/off 가능
				if(led3)
					*targetFloor |= 0b100;						// 3층 예약
				else
					*targetFloor &= ~0b100;						// 3층 예약 도중 해제
			}
		}
	}

	// 현재 상태를 이전 상태로 기억 => 버튼을 누를 때 LED 가 계속 토글하는 것 방지
	prevState1 = currState1;
	prevState2 = currState2;
	prevState3 = currState3;
}

void outerButtonState(uint8_t currFloor, uint8_t *targetFloor, uint8_t *elevatorCurr, uint8_t *elevatorPrev)
{
	// 버튼 누르는 동작 감지
	firstUpCurr = (HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_2) == 0) ? PUSHED : RELEASED;
	secondUpCurr = (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11) == 0) ? PUSHED : RELEASED;
	secondDnCurr = (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12) == 0) ? PUSHED : RELEASED;
	thirdDnCurr = (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10) == 0) ? PUSHED : RELEASED;

	// 1층 버튼이 눌리면
	if((firstUpPrev == RELEASED) && (firstUpCurr == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_2) == 0)
		{
			// 1층 버튼 LED ON (or 눌러져있었는데 다시 누르면 OFF)
			if((currFloor == 0b001) && (*elevatorCurr == STOP)) // 현재 1층에 정지해 있으면 1층 버튼 불 동작 X
			{
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, 0);
			}
			else
			{
				firstUpLed = !firstUpLed;
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, firstUpLed);	// 현재 층수와 다른 층수 누르면 버튼 불 on/off 가능
				if(firstUpLed)
					*targetFloor |= 0b001;						// 1층 예약
				else
					*targetFloor &= ~0b001;						// 1층 예약 도중 해제
			}
		}
	}

	// 2층 버튼이 눌리면
	if((secondDnPrev == RELEASED) && (secondDnCurr == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_12) == 0)
		{
			// 1층 버튼 LED ON (or 눌러져있었는데 다시 누르면 OFF)
			if((currFloor == 0b010) && (*elevatorCurr == STOP) && (*elevatorPrev == DOWN)) // 현재 1층에 정지해 있으면 1층 버튼 불 동작 X
			{
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, 0);
			}
			else
			{
				secondDnLed = !secondDnLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, secondDnLed);	// 현재 층수와 다른 층수 누르면 버튼 불 on/off 가능
				if(secondDnLed)
					*targetFloor |= 0b010;						// 1층 예약
				else
					*targetFloor &= ~0b010;						// 1층 예약 도중 해제
			}
		}
	}

	// 3층 버튼이 눌리면
	if((secondUpPrev == RELEASED) && (secondUpCurr == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_11) == 0)
		{
			// 1층 버튼 LED ON (or 눌러져있었는데 다시 누르면 OFF)
			if((currFloor == 0b010) && (*elevatorCurr == STOP) && (*elevatorPrev == UP)) // 현재 1층에 정지해 있으면 1층 버튼 불 동작 X
			{
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, 0);
			}
			else
			{
				secondUpLed = !secondUpLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, secondUpLed);	// 현재 층수와 다른 층수 누르면 버튼 불 on/off 가능
				if(secondUpLed)
					*targetFloor |= 0b010;						// 1층 예약
				else
					*targetFloor &= ~0b010;						// 1층 예약 도중 해제
			}
		}
	}

	if((thirdDnPrev == RELEASED) && (thirdDnCurr == PUSHED))
	{
		HAL_Delay(20);
		if(HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_10) == 0)
		{
			// 1층 버튼 LED ON (or 눌러져있었는데 다시 누르면 OFF)
			if((currFloor == 0b100) && (*elevatorCurr == STOP)) // 현재 1층에 정지해 있으면 1층 버튼 불 동작 X
			{
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, 0);
			}
			else
			{
				thirdDnLed = !thirdDnLed;
				HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, thirdDnLed);	// 현재 층수와 다른 층수 누르면 버튼 불 on/off 가능
				if(thirdDnLed)
					*targetFloor |= 0b100;						// 1층 예약
				else
					*targetFloor &= ~0b100;						// 1층 예약 도중 해제
			}
		}
	}

	// 현재 상태를 이전 상태로 기억 => 버튼을 누를 때 LED 가 계속 토글하는 것 방지
	firstUpPrev = firstUpCurr;
	secondUpPrev = secondUpCurr;
	secondDnPrev = secondDnCurr;
	thirdDnPrev = thirdDnCurr;
}
