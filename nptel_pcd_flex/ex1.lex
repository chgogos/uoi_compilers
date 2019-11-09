%%

[A-Z]+  {ECHO; printf("\n");}
.|\n    

%%

int main(){
    yylex();
}