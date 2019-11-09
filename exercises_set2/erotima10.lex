%{
#include <ctype.h>
%}

number [0-9]+
letter [a-zA-Z]

%%
{number}     {
        int c = atoi(yytext);
        int buffer[100]; // το πολύ μέχρι 100 δυαδικά ψηφία
        int i=0;
        while (c>0){
            buffer[i] = c%2;
            c /= 2;
            i++;
        }
        i--;
        while(i>=0){
            printf("%d", buffer[i]);
            i--;
        }
    }
{letter}     {
    printf("%c",toupper(*yytext));
    }
%%

int main()
{
    yylex();
}
