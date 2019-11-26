/*
CONTEXT FREE GRAMMAR:
E  -> E'|E'+E
E' -> -E'|a|(E)

left factoring

E  -> E'X
X  -> ε|+E
E' -> -E'|a|(E)
*/

#include <stdio.h>

char *input;
int i = 0;
int calls = 0;
int error = 0;

void fE();
void fX();
void fEp();

void fE()
{
  calls++;
  fEp();
  fX();
}

void fX()
{
  calls++;
  if (input[i] == '+')
  {
    i++;
    fE();
  }
}

void fEp()
{
  calls++;
  if (input[i] == '-')
  {
    i++;
    fEp();
  }
  else if (input[i] == 'a')
    i++;
  else if (input[i] == '(')
  {
    i++;
    fE();
    if (input[i] == ')')
      i++;
    else
      error = 1;
  }
  else
    error = 1;
}

int main()
{
  input = "a+(a+a+a+a)";
  fE();
  printf("function calls=%d\n", calls);
  printf("%s is %s\n", input, ((error==0 && input[i]=='\0')?"ACCEPTED":"REJECTED"));
}
