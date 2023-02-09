%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n;
%%
int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("input.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
