%% 

^[ ]*\n     
\n          {ECHO; yylineno++;}
.*          {printf("%d\t%s", yylineno, yytext);}

%%

int main()
{
    yylineno=1;
    yylex();
}
