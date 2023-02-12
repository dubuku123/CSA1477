#include<stdio.h>
#include <string.h>
#include <ctype.h>
int main()
{
char infix[100];
int temp_count = 1,i=0,j;
    printf("Enter an infix expression: ");
    scanf("%s", infix);
    printf("Three Address Code:\n");
    if (isalnum(infix[i])) 
{
    printf("t%d = %c %c %c \n", temp_count, infix[i],infix[i+1],infix[i+2]);
    printf("t%d = t%d  %c %c\n", temp_count+1, temp_count, infix[i+3], infix[i+4] );
    printf("t%d = t%d  %c %c\n", temp_count +2, temp_count+1, infix[i+5], infix[i+6] );
    printf("t%d = t%d  %c %c\n", temp_count +3, temp_count+2, infix[i+7], infix[i+8] );
    printf("t%d = t%d  %c %c\n", temp_count +4, temp_count+3, infix[i+9], infix[i+10] );
    }
    return 0;
}
