#include <stdio.h> // 선행처리기
#define APPLE 10 // 변수값 정의(해당 c파일 내에서는 모두 적용)
#define NAME "사과"
// #구문은 끝에 세미콜론을 붙이지 않는다.

int main() // 하나의 실행파일에는 하나의 메인함수만 존재
{
    printf("Hello World!!\n\n\n");
    printf("%s  %d \n", NAME, APPLE); // % : 서식지정자(서식지정자 갯수만큼 변수 존재해야함)

    return 0; //  정상적인 프로그램의 종료 고지(적지 않아도 무방)
}