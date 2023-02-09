%{
#include<stdio.h>
int p_count=0;
int n_count=0;
%}
%%
[+]?([0-9])+  {
p_count++; printf("Positive Integer:%s\n",yytext);}
[-]([0-9])+   {
n_count++; printf("negative Integer:%s\n",yytext);}
%%
int yywrap(void){}
void main(int argc[],char *argv[])
{
yylex();
printf("the total number of Postive Integer are: %d\n" ,p_count);
printf("the total number of Negative  Integer are:%d\n",n_count);
}
