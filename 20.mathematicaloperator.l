%{
#include<stdio.h>
%}
%%
"="|"+"|"-"|"/"|"*" { printf("valid");}
.+ {printf("invalid");}
%%
int yywrap(){}
int main()
{
printf("enter the input:");
yylex();
return 0;
}
