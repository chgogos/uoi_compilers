# JFlex

## Παραδείγματα από το <http://www.cs.ucc.ie/~kieran/cs4150/lectures/lecture6_jflex.pdf>

1. Αναζήτηση για την περιγραφή (a|b)*abb
    $ jflex example0.flex
    $ javac Search.java
    $ java Search text0.txt

2. Εντοπισμός αριθμών, λέξεων, συμβόλων
    $ jflex example1.flex
    $ javac Classify.java
    $ java Classify text1.txt

3. Εμφάνιση αριθμού γραμμής για κάθε γραμμή του κειμένου
    $ jflex example2.flex
    $ javac LineCounter.java
    $ java LineCounter text2.txt

4. Μετατροπή αριθμών κειμένου στη δεκαεξαδική τους μορφή
    $ jflex example3.flex
    $ javac Dec2HexConvertor.java
    $ java Dec2HexConvertor text3.txt

5. Μετατροπή κειμένου από κεφαλαία σε πεζά μόνο αν δεν είναι μέσα σε C multiline σχόλια
    $ jflex example4.flex
    $ javac Upper2Lower.java
    $ java Upper2Lower text4.txt
