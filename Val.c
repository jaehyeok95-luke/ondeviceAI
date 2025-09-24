// 변수의 선언과 사용
// 형식
// dataType valName;
// 데이터형 변수명;
// int num;
// char ch;
// 식별자 생성규칙
// 반드시 !!! 영문자, 숫자, 밑줄기호만 가능
// 반드시 !!! 첫글자는 영문 또는 밑줄기호만 가능
// 대문자, 소문자 구별
// C언어 키워드 사용불가

/* 코딩스타일 가이드(명명법)
 * 카멜표기법
 * -> int manAge;
 * -> int womanAge;
 * -> 함수
 * -> int peopleAge();
 * 
 * 파스칼표기법
 * -> int ManAge;
 * 
 * 스네이크표기법
 * -> int man_age;
 * 
 * 헝가리안표기법
 * 변수명 앞에 자료형을 붙힌다.
 * -> String strName; // C언어에는 없음
 * -> char ch1;
 * -> byte bAge;
*/

// 변수의 초기화(중요 - 변수는 반드시 초기화하고 시작. 특히, 지역변수는 더 신경쓸 것)
#include <stdio.h>
#define APPLE 100 // 매크로상수(define으로 정의된 상수)
int globalVal; // 메인함수 바깥쪽의 전역변수(초기화 불필요, default값 0)

int main()
{
    int price; // 메인함수 안쪽의 지역변수

    const double vat_rate = 0.1; // constant 변수(값이 절대 변하지 않음)

    printf("%d \n",price); // 쓰레기값 출력(초기화 필요)
    printf("%d \n",globalVal);
}