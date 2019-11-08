DIGIT   [0-9]

%%
{DIGIT}+    {
                int i = atoi(yytext);
                printf("%i", i+1);
            }
%%

int main(){
    yylex();
}