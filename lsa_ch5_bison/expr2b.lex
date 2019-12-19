%{
    #include "expr2b.h"
%}

%%

" "     /* ignore spaces */
\n      return 0;
[a-z]   return VAR;
.       return yytext[0];

%%
