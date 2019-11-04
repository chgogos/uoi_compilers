/ * HUA Compilers Course Lexer Example * /

import static java.lang.System.out;

%%
%class Lexer
%unicode
%public
%line
%standalone

% {
StringBuffer string = new StringBuffer();
% }

LineTerminator = \r|\n|\r\n
WhiteSpace = {LineTerminator}|[\t\f]
Comment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
Identifier = [:jletter:] [:jletterdigit:]*
DecIntegerLiteral = 0|[1-9][0-9]*

%state STRING

%%
<YYINITIAL> "int" {out.println("INT");}
<YYINITIAL> "char" {out.println("CHAR");}
<YYINITIAL> "float" {out.println("FLOAT");}
<YYINITIAL> "return" {out.println("RETURN");}
<YYINITIAL> "break" {out.println("BREAK");}

<YYINITIAL> {
    {Identifier } {out.println("id:" + yytext());}
    {DecIntegerLiteral} {out.println("decimal:" + yytext());}
    
}