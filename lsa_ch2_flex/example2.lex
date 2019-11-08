%{
    int chars=0;
    int lines=0;
%}

%%

.   {chars++;}
\n  {lines++;chars++;}

%%

int main(){
    yylex();
    printf("characters: %i, lines: %i\n", chars, lines);
}