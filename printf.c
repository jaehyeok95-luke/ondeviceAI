// 출력함수 예제
#include <stdio.h>

int main()
{
    int num; // 정수형 변수
    float x; // 실수형 변수
    char c; // 문자형 변수(C언어는 문자열을 그대로 취급하지 못함. 문자의 나열-배열로 처리)

    num = 123;
    x = 1.23;
    c = 'A';

    printf("%8d  %x \n",num, num); // %8d : 정수 8자리까지 표현(0은 공백표시)
    printf("%.3f  %e \n",x, x); // %.3f : 소수 셋째자리까지, %e : 지수형태 출력
    printf("%c \n",c);
    printf("%x \n",num); // 16진수 출력(소문자 형태)
    printf("%X \n",num); // 16진수 출력(대문자 형태, 좀 더 많이 사용하는 형태)
}