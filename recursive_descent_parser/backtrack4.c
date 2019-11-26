// E -> E+T | T
// T -> T*F | F
// F -> (E) | id

// με αφαίρεση της αριστερής αναδρομής προκύπτει

// E  -> TE'
// E' -> +TE'|ε
// T  -> FT'
// T' -> *FT'|ε
// F  -> (E)|id

#include <stdio.h>
#include <string.h>

char *input;
int i, error;

void fE();
void fEp();
void fT();
void fTp();
void fF();

int main()
{
    char *tests[] = {"a+(a*a)", "(a*a)+a", "a+(a*a+a)", "a+a*", "(a+a*a"};
    int n = sizeof(tests) / sizeof(tests[0]);
    for (int j = 0; j < n; j++)
    {
        input = tests[j];
        i = 0;
        error = 0;
        fE();
        printf("length=%i, error=%i\n", i, error);
        if (strlen(input) == i && error == 0)
            printf("%s accepted\n", input);
        else
            printf("%s rejected\n", input);
    }
}

void fE()
{
    fT();
    fEp();
}

void fEp()
{
    if (input[i] == '+')
    {
        i++;
        fT();
        fEp();
    }
}

void fT()
{
    fF();
    fTp();
}

void fTp()
{
    if (input[i] == '*')
    {
        i++;
        fF();
        fTp();
    }
}

void fF()
{
    if (input[i] == '(')
    {
        i++;
        fE();
        if (input[i] == ')')
            i++;
        else
            error = 1;
    }
    else if (input[i] == 'a')
        i++;
    else
        error = 1;
}