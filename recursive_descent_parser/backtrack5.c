// E  -> TE'
// E' -> +TE'|-TE'|ε
// T  -> FT'
// T' -> *FT'|/FT'|ε
// F  -> id|num|(E)

#include <stdio.h>
#include <string.h>
#include <ctype.h>

char *input;
int i, error;

void fE();
void fEp();
void fT();
void fTp();
void fF();

int main()
{
    input = "3*(2-x)";
    i = 0;
    error = 0;
    fE();
    printf("length=%i, error=%i\n", i, error);
    if (strlen(input) == i && error == 0)
        printf("accepted");
    else
        printf("rejected");
}

void fE()
{
    printf("T->TE'\n");
    fT();
    fEp();
}

void fEp()
{
    if (input[i] == '+')
    {
        i++;
        printf("E'->+TE'\n");
        fT();
        fEp();
    }
    else if (input[i] == '-')
    {
        i++;
        printf("E'->-TE'\n");
        fT();
        fEp();
    }
    else
    {
        printf("E'->null\n");
    }
}

void fT()
{
    printf("T->FT'\n");
    fF();
    fTp();
}

void fTp()
{
    if (input[i] == '*')
    {
        i++;
        printf("T'->*FT'\n");
        fF();
        fTp();
    }
    else if (input[i] == '/')
    {
        i++;
        printf("T'->/FT'\n");
        fF();
        fTp();
    }
    else
    {
        printf("T'->null\n");
    }
}

void fF()
{
    if (isalpha(input[i]))
    {
        i++;
        printf("F->id\n");
    }
    else if (isdigit(input[i]))
    {
        i++;
        printf("F->digit\n");
    }
    else if (input[i] == '(')
    {
        i++;
        printf("F->(E)\n");
        fE();
        if (input[i] == ')')
        {
            i++;
        }
        else
        {
            error = 1;
        }
    }
    else
    {
        error = 1;
    }
}