SPACE   [\t\r\n]
WORD    [^ \t\r\n]+

%{
    int words=0;
%}

%%
{SPACE} { }
{WORD}  words++;
%%

int main(){
    yylex();
    printf("words=%i\n", words);
}