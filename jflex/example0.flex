%%
%class Search
%standalone
%line
%column
%%
(a|b)*abb   {System.out.printf(
            "*** found match [%s] at l%d, c%d\n ",
            yytext(), yyline, yycolumn);
            }
\n { /* do nothing */}
. { /* do nothing */}