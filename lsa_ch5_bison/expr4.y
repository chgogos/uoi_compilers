%{
#include <stdio.h>
%}

%union{
    char var;
    int num;
}

%token <var>VAR;
%token <num>NUM;
%type <num>e;
%type <num>s;

%%

s   :   e       { printf("%i\n", $1); }
e   :   NUM     { $$ = $1; }  
    |   '(' e '+' e ')'     { $$ = $2 + $4; }
    |   '(' e '*' e ')'     { $$ = $2 * $4; }

%%

int main(){
    yyparse();
    return 0;
}
