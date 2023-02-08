%{
#include<stdio.h>
%}

%%
[if |else|printf|ifelse|scanf|int|main|include|while]+ {printf("\n%s is keyword",yytext);}
.+ {printf("\n%s is not key word",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
