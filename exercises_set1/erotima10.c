// DFA --> C
// (00)*1 άρτιο πλήθος μηδενικών και μετά 1

#include <stdio.h>

int match(char *next)
{

S0:
    if (*next == '\0')
        return 0;
    if (*next == '0')
    {
        next++;
        goto S1;
    }
    if (*next == '1')
    {
        next++;
        goto S2;
    }
    return 0;

S1:
    if (*next == '\0')
        return 0;
    if (*next == '0')
    {
        next++;
        goto S0;
    }
    if (*next == '1')
    {
        next++;
        goto S1;
    }
    return 0;

S2:
    if (*next == '\0')
        return 1;
    return 0;
}

#define N 5

int main()
{
    char *s[N] = {"1", "001", "00001", "0000001", "01"};
    for (int i = 0; i < N; i++)
    {
        printf("Scanning text: %s accepted: %s\n", s[i], match(s[i]) ? "YES" : "NO");
    }
}