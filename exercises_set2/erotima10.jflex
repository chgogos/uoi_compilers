%%
%class Dec2BinScanner
%standalone
	number = [0-9]+
	letter = [a-zA-Z]
%%
{number}    {
            int x = Integer.parseInt(yytext());
            System.out.printf("%s", Integer.toBinaryString(x));
            }
{letter}    {
            System.out.printf("%s", yytext().toUpperCase());
            }