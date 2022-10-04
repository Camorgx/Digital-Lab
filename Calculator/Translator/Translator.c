#include <stdio.h>

char ans[32], len = 0;

void write(unsigned x) {
    unsigned stack[32], top = 1;
    char flag[32];
    stack[0] = x; flag[0] = 1;
    while (top) {
        if (flag[top - 1] && stack[top - 1] > 9) {
            flag[top - 1] = 0;
            stack[top] = stack[top - 1] / 10;
            flag[top] = 1;
            top = top + 1;
            continue;
        }
        ans[len] = stack[top - 1] % 10 + 48;
        len = len + 1;
        top = top - 1;
    }
}

int main() {
    unsigned x = 154;
    write(x);
    for (unsigned i = 0; i != len; i = i + 1) putchar(ans[i]);
    putchar('\n');
    return 0;
}