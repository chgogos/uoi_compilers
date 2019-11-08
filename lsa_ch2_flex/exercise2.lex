%{
  int sum = 0;
%}

%x JOB SALARY END

%%

[^,]*,           { BEGIN(JOB); }
<JOB>[^,]*,      { BEGIN(SALARY); }
<SALARY>[0-9]+   { sum += atoi(yytext); BEGIN(END); }
<END>\n          { BEGIN(INITIAL); }

%%

void main()
{
  yylex();
  printf("%i\n", sum);
}
