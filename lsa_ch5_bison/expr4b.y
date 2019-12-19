%{
#include <stdio.h>
int env[256];
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
e   :   VAR     { $$ = env[$1]; }
    |   NUM     { $$ = $1; }  
    |   '(' e '+' e ')'     { $$ = $2 + $4; }
    |   '(' e '*' e ')'     { $$ = $2 * $4; }

%%

int main(){
    env['x']=100;
    yyparse();
    return 0;
}
