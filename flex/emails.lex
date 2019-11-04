%{
#include <stdio.h>
#define TK_EMAIL	257
#define TK_ILLEGAL_SEQ	258
int emailcount=0;
%}

letter	[a-zA-Z]
word 	{letter}{letter}+
digit	[0-9]
other_chars	[.\-_]
id 		{letter}({letter}|{digit}|{other_chars})*
domain	{word}\.{word}(\.{word})*
email 	{id}\@{domain}
ws		[ \t\n]

%%
{email}	{printf("I have found %d emails, and counting...\n",++emailcount); return TK_EMAIL;}
{ws} 	{/* ignore whitespaces */}
. 		{return TK_ILLEGAL_SEQ;}
%%

int main(int argc, char** argv) {
	int token;
	while ((token = yylex()) != 0) {
		if (token == TK_ILLEGAL_SEQ) {
			printf("Encountered illegal sequence \n ");
		} else {
			printf("Email: %s\n", yytext);
		}
	}
	return 0;
}
