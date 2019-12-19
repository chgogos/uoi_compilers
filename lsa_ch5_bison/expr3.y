%{
#include <stdio.h>
%}

%union{
    char var;
    int num;
}

%token <var>VAR;
%token <num>NUM;

%%

e   :   VAR
    |   NUM
    |   '(' e '+' e ')'
    |   '(' e '*' e ')'

%%

int main(){
    printf("%i\n", yyparse());
    return 0;
}
