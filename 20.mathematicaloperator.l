#include <stdio.h>
#include <string.h>

int main()
{
	char operator[10];
	printf("Enter an operator: ");
	scanf("%s", operator);

if (strcmp(operator, "+") == 0 || strcmp(operator, "-") == 0 || strcmp(operator, "*") == 0 || strcmp(operator, "/") == 0)
    printf("Valid operator\n");
else
    printf("Invalid operator\n");

return 0;
