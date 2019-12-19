# Postfix calculator

    $ bison -vdty calc.y  
        --> y.tab.c     y.tab.h
    $ flex calc.l
        --> lex.yy.c
    $ gcc -o calc lex.yy.o y.tab.o -ly -ll
        --> calc
