%{
#include<stdio.h>
%}

%%
[a-z . 0-9]+@[a-z]+".com"|".in" {printf("\n%s MAIL ACCEPTED",yytext);}
.+ {printf("\n%s MAIL NOT ACCEPTED",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
