%{
    #include "y.tab.h"
    typedef enum {END, NUM} Token;
%}

%%
[^0-9]
[0-9]+      {
                yylval = atoi(yytext);
                return NUM;
            }
<<EOF>>     {return END;}

%%

int main(){
    while (yylex() != END)
        printf("NUM(%i)\n", yylval);
}