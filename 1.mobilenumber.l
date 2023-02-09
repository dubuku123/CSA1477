%{
#include<stdio.h>
%}

%%
[6-9][0-9]{9} {printf("\n%s is MOBILE NUMBER",yytext);} 
.+ {printf("\n%s is NOT AN MOBILE NUMBER",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
