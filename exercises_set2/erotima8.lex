POSITIVE_INTEGER    [1-9][0-9]*
TODAY_PLUS_N        TODAY\+{POSITIVE_INTEGER}
TODAY_MINUS_N       TODAY\-{POSITIVE_INTEGER}

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
TODAY printDay(0);
YESTERDAY printDay(-1);
TOMORROW printDay(1);
{TODAY_PLUS_N}  { 
                    char* c = strchr(yytext, '+');
                    printDay(atoi(c));
                }
{TODAY_MINUS_N} { 
                    char* c = strchr(yytext, '-');
                    printDay(atoi(c));
                }
%%
int main(){
    yylex();
}