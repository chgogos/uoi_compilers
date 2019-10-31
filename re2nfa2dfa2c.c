// Regular Expression --> NFA --> DFA --> C
// example: ((ab)|c)*

#include <stdio.h>

int match(char *next)
{
    goto A;

A:
    if (*next == '\0')
        return 1;
    if (*next == 'a')
    {
        next++;
        goto B;
    }
    if (*next == 'c')
    {
        next++;
        goto C;
    }
    return 0;

B:
    if (*next == '\0')
        return 0;
    if (*next == 'b')
    {
        next++;
        goto D;
    }
    return 0;

C:
    if (*next == '\0')
        return 1;
    if (*next == 'a')
    {
        next++;
        goto B;
    }
    if (*next == 'c')
    {
        next++;
        goto C;
    }
    return 0;

D:
    if (*next == '\0')
        return 1;
    if (*next == 'a')
    {
        next++;
        goto B;
    }
    if (*next == 'c')
    {
        next++;
        goto C;
    }
    return 0;
}

#define N 5

int main()
{
    char *s[N] = {"abcc", "cabc", "ac", "abababababababababcccc", "abe"};
    for (int i = 0; i < N; i++)
    {
        printf("Scanning text: %s accepted: %s\n", s[i], match(s[i]) ? "YES" : "NO");
    }
}