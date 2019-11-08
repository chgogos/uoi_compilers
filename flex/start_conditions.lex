/* 
Αναγνωρίζει την είσοδο "3.14" ως ακέραιο (3), τελεία και ακέραιο (14)
Αν όμως στην αρχή της γραμμής εισαχθεί το κείμενο expect-floats τότε πλέον αναγνωρίζει την είσοδο "3.14" ως πραγματικό
*/

%{
#include <math.h>
%}

%s expect

%%
expect-floats   BEGIN(expect);

<expect>[0-9]+\.[0-9]+      {
                                printf("found a float = %f\n",atof(yytext));
                            }
<expect>\n                  { 
                                BEGIN(INITIAL);
                            }
[0-9]+                      {
                                printf("found an integer = %d\n", atoi(yytext));
                            }
"."                         {
                                printf("found a dot\n");
                            }
%%

int main(){
    yylex();
}