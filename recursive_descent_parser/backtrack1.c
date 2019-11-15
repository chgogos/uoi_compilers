// UNIVERSITY OF YORK (Matthew Naylor 2011)
/*
CONTEXT FREE GRAMMAR:

E -> (E+E) | (E*E) | V
V -> x | y
*/

#include <stdio.h>

char *next;

int calls = 0; // μετρά το πλήθος των αναδρομικών κλήσεων

int eat(char c) {
  calls++;
  if (*next == c) {
    next++;
    return 1;
  }
  return 0;
}

int v() {
  char* save = next;
  calls++;
  
  if (eat('x')) return 1;
  else next = save;

  if (eat('y')) return 1;
  else next = save;

  return 0;
}

int e() {
  char* save = next;
  calls++;

  if (eat('(') && e() && eat('+') && e() && eat(')')) return 1;
  else next = save;

  if (eat('(') && e() && eat('*') && e() && eat(')')) return 1;
  else next = save;

  if (v()) return 1;
  else next = save;

  return 0;
}

void main()
{
  next = "((((x*x)*x)*x)*x)";
  printf("%i\n", e());
  printf("%i\n", calls);
}
