%{
#include<stdio.h>
%}
%%
[\t ]+ ;
[0-9]+|[0-9]*\.[0-9]+ { printf("\n%s is NUMBER", yytext);}
#.* { printf("\n%s is COMMENT", yytext);}
[a-zA-Z]+ { printf("\n%s is WORD", yytext);}
\n
%%
int yywrap( )
{
	return 1;
}
int main(int argc,char* argv[])
{
yyin=fopen(argv[1],"r");
yyout=fopen("output.c","w");
yylex();
}
