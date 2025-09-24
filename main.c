#include <stdio.h>

// /**
//  * @brief 산술연산자 연습
//  * @version
//  * 
//  * @return int 
//  */
// int main() 
// {
//     int a = 30; // 정수타입의 a를 선언과 동시에 초기값을 입력
//     int b = 17; // 정수타입의 b를 선언과 동시에 초기값을 입력
//     int result; // 정수타입의 result라는 변수를 선언하고 초기값은 없음 !! 조심!!

//     result = a + b; // a와 b를 더해서 좌측의 result로 대입함
//     printf(" a + b = %d 입니다... \n",result);

//     result = a - b; // a와 b를 빼서 좌측의 result로 대입함
//     printf(" a - b = %d 입니다... \n",result);

//     result = a * b; // a와 b를 곱해서 좌측의 result로 대입함
//     printf(" a * b = %d 입니다... \n",result);

//     result = a / b; // a와 b를 나눠서 좌측의 result로 대입함
//     printf(" a / b = %d 입니다... \n",result);

//     result = a % b; // a와 b를 나눈 나머지를 좌측의 result로 대입함
//     printf(" a %% b = %d 입니다... \n",result); // %하나만 쓰면 서식지정자로 인식하므로 주의 !!!
// }

// /**
//  * @brief 대입 & 복합연산자 연습
//  * @brief 복합연산자는 자기 자신과 남을 연산하여 자기 자신에게 넣음
//  * @return int 
//  */
// int main()
// {
//     int a = 34;
//     int c;

//     c = a;
//     printf("c = a 는 %d 입니다 \n",c);

//     c += a; // c = c + a ==> 68 = 34 + 34
//     printf("c += a 는 %d 입니다 \n",c);

//     c -= a; // c = c - a ==> 34 = 68 - 34
//     printf("c -= a 는 %d 입니다 \n",c);

//     c *= a; // c = c * a ==> 1156 = 34 * 34
//     printf("c *= a 는 %d 입니다 \n",c);

//     c /= a; // c = c / a ==? 34 = 1156 / 34
//     printf("c /= a 는 %d 입니다 \n",c);
// }

// /**
//  * @brief 관계연산자
//  * 
//  * @return int 
//  */
// int main()
// {
//     int a = 0, b = 0;

//     printf("두 개의 정수를 입력하시오 \n");
//     scanf("%d %d",&a,&b);
//     printf("%d > %d : %d \n", a, b, a > b); // 마지막 항인 a > b 가 참이면 1 반환, 거짓이면 0 반환
//     printf("%d < %d : %d \n", a, b, a < b);
//     printf("%d >= %d : %d \n", a, b, a >= b);
//     printf("%d <= %d : %d \n", a, b, a <= b);
//     printf("%d == %d : %d \n", a, b, a == b);
//     printf("%d != %d : %d \n", a, b, a != b);
// }

// /**
//  * @brief 논리연산자 (AND, OR, NOT - &&, ||, !)
//  * 
//  * @return int 
//  */
// int main()
// {
//     int month;
    
//     printf("몇 월?? \n");
//     scanf("%d", &month);

//     if(month >= 6 && month <= 8) // AND 연산자 &&
//     {
//         printf("성수기 요금 적용 \n");
//     }

//     if(month < 6 || month > 8) // OR 연산자 ||
//     {
//         printf("일반 요금 적용 \n");
//     }
// }

// /**
//  * @brief 삼항연산자 or 조건연산자
//  * 
//  * @return int 
//  */
// int main()
// {
//     int a, b;
//     int result;

//     // expression1 ? expression2 : expression3
//     // 만약 exp1이 참(true)이면 exp2가 수행되고 거짓(False)면 exp3가 수행됨
//     printf("a, b값을 입력하시오. \n");
//     scanf("%d %d",&a,&b);
//     result = a || b ? 1 : 2;
//     printf("%d \n",result);
// }

// /**
//  * @brief 특수연산
//  * sizeof 연산자
//  * & => 주소반환 연산자
//  * * => 포인터 역참조 연산자 
//  * 
//  * @return int 
//  */

// /**
//  * @brief 비트연산자(AND, OR, NOT, XOR - &, |, ~, ^)
//  * 
//  * @return int 
//  */
// int main()
// {
//     // int n1 = 15; // 00000000 00000000 00000000 00001111 => 15의 4Byte 표현
//     // int n2 = 20; // 00000000 00000000 00000000 00010100
//     // int result = n1 & n2; // 00000000 00000000 00000000 00000100 => 4

//     // printf("n1 = %d \n",n1);
//     // printf("n2 = %d \n",n2);
//     // printf("result = %d \n",result);

//     // int n1 = 15; // 00000000 00000000 00000000 00001111 => 15의 4Byte 표현
//     // int n2 = 20; // 00000000 00000000 00000000 00010100
//     // int result = n1 | n2; // 00000000 00000000 00000000 00011111 => 31

//     // printf("n1 = %d \n",n1);
//     // printf("n2 = %d \n",n2);
//     // printf("result = %d \n",result);

//     // int n1 = 15; // 00000000 00000000 00000000 00001111 => 15의 4Byte 표현
//     // int n2 = 20; // 00000000 00000000 00000000 00010100
//     // int result = n1 ^ n2; // 00000000 00000000 00000000 00011011 => 27

//     // printf("n1 = %d \n",n1);
//     // printf("n2 = %d \n",n2);
//     // printf("result = %d \n",result);

//     // int n1 = 15; // 00000000 00000000 00000000 00001111 => 15의 4Byte 표현
//     // int result = ~n1; // 11111111 11111111 11111111 11110000 ==> -16 (2의 보수법)

//     // printf("n1 = %d \n",n1);
//     // printf("result = %d \n",result);

//     // // 쉬프트 연산(LEFT, RIGHT - <<, >>)
//     // int n1 = 1; // 00000000 00000000 00000000 00000001
//     // int s1 = n1 << 1; // 00000000 00000000 00000000 00000010 ==> 2 (왼쪽으로 1bit 이동)
//     // int s2 = n1 << 2; // 00000000 00000000 00000000 00000100 ==> 4 (왼쪽으로 2bit 이동)
//     // int s3 = n1 << 3; // 00000000 00000000 00000000 00001000 ==> 8 (왼쪽으로 3bit 이동)

//     // printf("s1 = %d \n",s1);
//     // printf("s2 = %d \n",s2);
//     // printf("s3 = %d \n",s3);

//     // char a; // 1byte(=8bit) 크기
//     // a = 127;
//     // printf("%d \n",a);

//     // a = 128; // a = 127 + 1 로 표현해도 같은 결과(오버플로우)
//     // printf("%d \n",a);

//     unsigned char a; // 1byte크기로 양수만 표현 (0 ~ 255)
//     a = 0;
//     printf("%d \n",a);
    
//     a = a - 1; // a = 255 // 언더플로우
//     printf("%d \n",a);
// }

// /**
//  * @brief 비트마스크
//  * - 비트 논리 연산에 사용되어 특정 비트값을 조작하기 위한 목적
//  * - AND, OR 연산을 이용해서 특정비트의 이진비트를 처리함(8bit 체재에서 많이 사용)
//  * - 장점 : 메모리를 적게 사용, 빠르게 동작, 소스코드가 직관적
//  * @return int 
//  */
// int main()
// {
//     // unsigned short data = 0x5678; // 0101 0110 0111 1000

//     // unsigned short mask1 = 0xf000; // 1111 0000 0000 0000
//     // unsigned short mask2 = 0x0f00; // 0000 1111 0000 0000
//     // unsigned short mask3 = 0x00f0; // 0000 0000 1111 0000
//     // unsigned short mask4 = 0x000f; // 0000 0000 0000 1111

//     // printf("결과 1 = %#.4x \n", data & mask1); // 서식지정자 의미 : 결과값을 16진법 4bit로 표현
//     // printf("결과 2 = %#.4x \n", data & mask2);
//     // printf("결과 3 = %#.4x \n", data & mask3);
//     // printf("결과 4 = %#.4x \n", data & mask4);
//     // // 초기값 5678이 결과값 5000, 600, 70, 8로 분리가능
//     // // 마스크를 잘 정의하면 특정비트열을 뽑아낼 수 있다.

//     unsigned short data = 0x0000; // 0000 0000 0000 0000

//     unsigned short mask1 = 0xf000; // 1111 0000 0000 0000
//     unsigned short mask2 = 0x0f00; // 0000 1111 0000 0000
//     unsigned short mask3 = 0x00f0; // 0000 0000 1111 0000
//     unsigned short mask4 = 0x000f; // 0000 0000 0000 1111

//     printf("결과 1 = %#.4x \n", data | mask1); // 서식지정자 의미 : 결과값을 16진법 4bit로 표현
//     printf("결과 2 = %#.4x \n", data | mask2);
//     printf("결과 3 = %#.4x \n", data | mask3);
//     printf("결과 4 = %#.4x \n", data | mask4);
//     // | 연산은 특정비트열을 내가 원하는 것으로 변경할 수 있다.

//     // & 연산자는 특정비트를 0으로
//     // | 연산자는 특정비트를 1로
//     // ^ 연산자는 특정비트를 반전 !!!
// }

/**
 * @brief 묵시적 형변환 (type casting)
 * 
 * @return int 
 */
int main()
{
    int a, b, c;
    double average;

    printf("정수 3개를 입력하세요 : \n");
    scanf("%d %d %d",&a,&b,&c);

    average = (double)(a+b+c)/3; // (자료형) 연산자 : 나눗셈(/)보다 우선적용되어 a+b+c 계산값에 선제적으로 적용 => a+b+c 값이 실수값이 되어 나눗셈 계산
    printf("평균 : %f \n",average); // (double)이 있는 경우 : 결과값 3.333333, (double)이 없는 경우 : 결과값 3
}

