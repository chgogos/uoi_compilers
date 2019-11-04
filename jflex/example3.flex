%%
%class Dec2HexConvertor
%standalone
number = [0-9]+
%%
{number}    {
            int n = Integer.parseInt(yytext());
            System.out.printf("%X (hex)", n);
            }