%{
#include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9]+ {printf("\n%s is IDENTIFIER",yytext);} 
.+ {printf("\n%s is NOT AN IDENTIFIER",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
