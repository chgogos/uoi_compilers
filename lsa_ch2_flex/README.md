# Flex, a Lexical Analyser Generator

## Παράδειγμα 1

Αντιμετάθεση δύο λέξεων σε ένα κείμενο

[./example1.lex]

    $ flex -o example1.c example1.flex
    $ gcc -o example1 example1.c  -lfl
    ./example1 < data1.txt

## Παράδειγμα 2

Μέτρηση αριθμού χαρακτήρων και αριθμού γραμμών σε ένα κείμενο.

[./example2.lex]

    $ flex -o example2.c example2.flex
    $ gcc -o example2 example2.c  -lfl
    ./example2 < data1.txt

## Παράδειγμα 3

Μέτρηση αριθμού λέξεων σε ένα κείμενο.

[./example3.lex]

    $ flex -o example3.c example3.flex
    $ gcc -o example3 example3.c  -lfl
    ./example3 < data1.txt

## Παράδειγμα 4

Αύξηση κάθε ακέραιου αριθμού που εντοπίζεται στο κείμενο κατά 1.

[./example3.lex]

    $ flex -o example4.c example4.flex
    $ gcc -o example4 example4.c  -lfl
    ./example4 data4.txt

## Παράδειγμα 5

Επιστροφή σημασιολογικής τιμής μέσω της yyval

    $ flex -o example5.c example5.flex
    $ gcc -o example5 example5.c  -lfl
    ./example5 data5.txt

## Ασκήσεις

Αντιστροφή κάθε λέξης σε ένα κείμενο.

[./exercise1.lex]

    $ flex -o exercise1.c exercise1.flex
    $ gcc -o exercise1 exercise1.c  -lfl
    ./exercise1 data1.txt
