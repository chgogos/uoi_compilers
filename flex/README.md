# Flex example

## Example 1

	$ flex email.lex
	$ gcc lex.yy.c -ll  // macos
	// $ gcc lex.yy.c -lfl // linux
	$ ./a.out 

	> ch@gmail.com
	I have found 1 emails, and counting...
	Email: ch@gmail.com
	> aa x@gmail.com
	Encountered illegal sequence
 	Encountered illegal sequence
 	I have found 2 emails, and counting...
	Email: x@gmail.com
	...

## Example 2

	$ flex hex.lex
	$ gcc lex.yy.c -ll
	$ ./a.out 

	Give me your input:
	> test

	> 0x123
	Found a HEX number 0x123 !
	> a hexadecimal number 0xaf2
	Found a HEX number 0xaf2 !
	...


