# LSA Lab 2: Flex

<https://www.cs.york.ac.uk/fp/lsa/labs/lab2.html>

Compilation:

    $ flex -o macro.c macro.lex
    $ gcc -o macro macro.c -lfl

Run:

    $ ./macro < example0.txt
    % ./macro < example1.txt