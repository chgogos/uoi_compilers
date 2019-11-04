%%
%class Upper2Lower
%standalone
COMMENT = "/*" [^*] ~"*/" | "/*" "*"+ "/"
%%
[A-Z]   {
        System.out.print(Character.toLowerCase(yytext().charAt(0)));
        }

{COMMENT}
{ /* Do nothing */
}