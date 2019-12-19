%{
#include <stdio.h>
%}

%token VAR

%%

e   :   VAR
    |   '(' e '+' e ')'
    |   '(' e '*' e ')'

%%

int yylex() {
    char c = getchar();
    while (c==' ')  
        c=getchar();
    
    if (c=='\n') return 0;
    if (c>='a' && c <= 'z')
        return VAR;
    return c;

}

int main(){
    printf("%i\n", yyparse());
    return 0;
}
