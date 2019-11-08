%{
// #include <stdio.h>
int sum=0;
int c=0;
%}

%%
0|[1-9][0-9]*	{
					int x = atoi(yytext);
					sum = sum + x;
					c++;
					printf("number=%d, count=%d, sum=%d\n", x, c, sum); 
					return 1;
				}
. 				{ } // do nothing
bye				{return 0;}
%%

int main() {
	int token;
	while ((token = yylex()) != 0) {
			printf("%s was processed", yytext);
	}
	return 0;
}
