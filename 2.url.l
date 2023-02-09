%{
%}

%%
((http)|(ftp))s?:\/\/[a-zA-Z0-9]{2}(\.[a-z]{2})+(\/[a-zA-Z0-9+=?]*)* {printf("\nURL InValid\n");}
.+ {printf("\nURL valid\n");}

%%
int yywrap(){}

void main()
{
	printf("\nEnter URL : ");
	yylex();
	printf("\n");
}
