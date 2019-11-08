%{
    #include <stdio.h>
    #include <ctype.h>
    int x;
%}
WORD    [^ \t\r\n]+

%%

{WORD} {
            x++;
            for(int i=0;i<yyleng;i++){
                printf("%c",toupper(yytext[i]));
            }
            return 1;
        }

<<EOF>>     {return 0;}  // ctrl+d για mac

%%

int main(){
    while(yylex()==1){
        printf("%d\n", x);
    }
}