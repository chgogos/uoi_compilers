# CS143

## Example 1

    $ flex hide-digits.l
    $ gcc -o hide-digits lex.yy.c -ll
    $ ./hide-digits

## Example 2

    $ flex count.l
    $ gcc -o count lex.yy.c -ll
    $ ./count < count.l
