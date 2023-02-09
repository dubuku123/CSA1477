%{
#include<stdio.h>
int nc=0;
%}

%%
"/"[a-zA-Z0-9\n\t]"*/" {nc++;}
"//"[a-zA-Z0-9\t]*"\n" {nc++;}
%%
int yywrap(){}

int main(int argc ,char* argv[])
{
        yyin=fopen(argv[1],"r");

        yyout=fopen("output.c","w");
        yylex();
        printf("the number of comment lines=%d\n",nc);
}
