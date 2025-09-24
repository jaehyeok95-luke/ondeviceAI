// sizeof 연산자 : 주어진 파라미터에 대해서 크기를 반환(바이트 단위)
#include <stdio.h>

int main()
{
    char ch;
    int num;
    double x;

    printf("char 형의 바이트 크기 :  %d \n", sizeof(char));
    printf("short 형의 바이트 크기 : %d \n", sizeof(short));
    printf("int 형의 바이트 크기 : %d \n", sizeof(int));
    printf("long 형의 바이트 크기 : %d \n", sizeof(long));
    printf("float 형의 바이트 크기 : %d \n", sizeof(float));
    printf("double 형의 바이트 크기 : %d \n", sizeof(double));
    printf("long double 형의 바이트 크기 : %d \n", sizeof(long double));

    printf(" ch변수의 크기 : %d\n", sizeof(ch));
    printf(" num변수의 크기 : %d\n", sizeof(num));
    printf(" x변수의 크기 : %d\n", sizeof(x));

}