WORD    [^ \t\r\n]+

%%
{WORD}  {
            for(int i=yyleng-1;i>=0;i--){
                printf("%c", yytext[i]);
            }
        }
%%
int main(){
    yylex();
}