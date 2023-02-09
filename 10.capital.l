%{
#include<stdio.h>
%}

%%
[A-Z]+ {printf("\n%s is CAPITAL",yytext);}
.+ {printf("\n%s is NOT CAPITAL",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
