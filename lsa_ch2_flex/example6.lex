%x COM /* In comment */

%%
"/*"        { BEGIN(COM); }
<COM>"*/"   { BEGIN(INITIAL); }
<COM>.|\n   /* Ignore */

%%
void main() {
    yylex();
}