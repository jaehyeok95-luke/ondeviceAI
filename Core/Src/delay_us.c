#include "delay_us.h"

void delay_us(uint16_t us)
{
	__HAL_TIM_SET_COUNTER(&htim11, 0);					// timer10 을 0 부터 세기 시작하도록 설정하는 HAL 함수
	while((__HAL_TIM_GET_COUNTER(&htim11)) < us);		// 지정한 delay time 이 될 때까지 1us 씩 카운터 세는 동작
}
