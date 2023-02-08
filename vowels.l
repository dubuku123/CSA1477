%{
#include<stdio.h>
%}

%%
[a|e|i|o|u/A|E|I|O|U]+ {printf("\n%s is VOWEL",yytext);}
.+ {printf("\n%s is NOT VOWEL",yytext);}
%%

int yywrap(){}
int main()
{
while(yylex());
}
