%{
#include <stdio.h>
%}

%%

e   :   'x'
    |   'y'
    |   '(' e '+' e ')'
    |   '(' e '*' e ')'

%%

int yylex() {
    char c = getchar();
    if (c=='\n') 
        return 0; 
    else 
        return c;
}

int main(){
    printf("%i\n", yyparse());
    return 0;
}