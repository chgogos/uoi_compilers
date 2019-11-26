// UNIVERSITY OF YORK (Matthew Naylor 2011)
/*
CONTEXT FREE GRAMMAR:

E -> (E+E) | (E*E) | V
V -> x | y

after left factoring

E -> (ER | V
R -> +E) | *E)
V -> x | y
*/

#include <stdio.h>

char *next;

int calls = 0; // μετρά το πλήθος των αναδρομικών κλήσεων

int eat(char c)
{
  calls++;
  if (*next == c)
  {
    next++;
    return 1;
  }
  return 0;
}

int v()
{
  char *save = next;
  calls++;

  if (eat('x'))
    return 1;
  else
    next = save;

  if (eat('y'))
    return 1;
  else
    next = save;

  return 0;
}

int r();

int e()
{
  char *save = next;
  calls++;

  if (eat('(') && e() && r())
    return 1;
  else
    next = save;

  if (v())
    return 1;
  else
    next = save;

  return 0;
}

int r()
{
  char *save = next;
  calls++;

  if (eat('+') && e() && eat(')'))
    return 1;
  else
    next = save;

  if (eat('*') && e() && eat(')'))
    return 1;
  else
    next = save;

  return 0;
}

int main()
{
  // next = "((((x*x)*x)*x)*x)";
  next = "((((x*x)*x)*x)*x";  // syntax error
  printf("%i\n", e());
  printf("%i\n", calls);
}
