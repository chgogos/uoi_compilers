#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *next;

// exercise 1.1
int eat(char c)
{
    if (c == *next)
    {
        next++;
        return 1;
    }
    else
        return 0;
}

// exercise 1.2
int between(char low, char high)
{
    if (*next >= low && *next <= high)
    {
        next++;
        return 1;
    }
    else
        return 0;
}

// exercise 1.3
void space()
{
    while (*next == ' ' || *next == '\t' || *next == '\n' || *next == '\r')
    {
        next++;
    }
}

// exercise 1.4
// [a-z]
int letter()
{
}

// [0-9]
int digit()
{
}

// letter letter*
int var()
{
}

// digit digit*
int num()
{
}

// ######################################

void check_exercise_1_1()
{
    next = "Hello";
    if (eat('H') && eat('e'))
        printf("Eaten 'H' and 'e'\n");
    if (eat('x'))
        printf("Eaten 'x'\n");
    if (eat('l'))
        printf("Eaten 'l'\n");
    printf("Remaining: '%s'\n", next);
}

void check_exercise_1_2()
{
    next = "123";
    if (between('0', '9'))
        printf("Eaten a digit\n");
    if (between('a', 'z'))
        printf("Eaten a letter\n");
    printf("Remaining: '%s'\n", next);
}

void check_exercise_1_3()
{
    next = "   \n\t  \t \r\nHello";
    space();
    printf("Remaining: '%s'\n", next);
}

int main()
{
    // check_exercise_1_1();
    // check_exercise_1_2();
    check_exercise_1_3();
}