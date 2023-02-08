%{
#include<stdio.h>
%}

%%
[0-9] {printf("\n%s is DIGIT",yytext);} 
.+ {printf("\n%s is NOT AN DIGIT",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
