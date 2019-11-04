%{
#include <time.h>

void printDay(int offset){
    char date[32];
    time_t t = time(NULL) + offset * 86400;
    strftime(date, 32, "%d %B", localtime(&t));
    printf("%s", date);
}

%}

%%

%%
void main(){
    yylex();
}