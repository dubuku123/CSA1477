%{
#include<stdio.h>
%}

%%
[/a-zA-Z/|//]+ {printf("\n%s is comment",yytext);}
.+ {printf("\n%s is not comment",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
