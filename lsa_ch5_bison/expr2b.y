%{
#include <stdio.h>
%}

%token VAR

%%

e   :   VAR
    |   '(' e '+' e ')'
    |   '(' e '*' e ')'

%%

int main(){
    printf("%i\n", yyparse());
    return 0;
}
