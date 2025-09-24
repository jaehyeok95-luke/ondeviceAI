// 입력함수 예제
#include <stdio.h>

int main()
{
    char name[20];
    int age;
    char gender;

    printf(" 이름, 나이, 성별(M/F) 순으로 입력하시오 \n");
    scanf("%s %d %c",name, &age, &gender);
    printf("이 름 : %s \n", name);
    printf("나 이 : %d \n", age);
    printf("성 별 : %c \n", gender);
}