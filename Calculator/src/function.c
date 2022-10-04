#include <stdio.h>
#include <string.h>
unsigned get_value(unsigned char* a) {
    unsigned int num = 0;
    unsigned int stack_num[32], num_top = 0;
    unsigned char stack_op[32], op_top = 0;
    unsigned len = strlen(a); a[len++] = ')';
    stack_op[op_top++] = '(';
    unsigned in_num = 0;
    for (unsigned i = 0; i < len; i++) {
        if (a[i] == ' ') continue;
        if ('0' <= a[i] && a[i] <= '9') {
            num = num * 10 + (a[i] - '0');
            in_num = 1;
        }
        else {
            if (in_num) { stack_num[num_top++] = num; in_num = 0; }
            num = 0;
            if ((a[i] == '+' || a[i] == '-') && op_top) {
                unsigned char c = stack_op[op_top - 1];
                while((c == '*' || c == '/') && op_top) {
                    --op_top; --num_top;
                    int a = stack_num[num_top];
                    --num_top;
                    int b = stack_num[num_top];
                    if (c == '*') stack_num[num_top++] = a * b;
                    else if (c == '/') stack_num[num_top++] = b / a;
                    c = stack_op[op_top - 1];
                }
            }
            if (a[i] == ')') {
                --op_top;
                unsigned char c = stack_op[op_top];
                while(c != '(') {
                    unsigned a = stack_num[--num_top], b = stack_num[--num_top];
                    if (c == '-') stack_num[num_top++] = (b - a);
                    else if (c == '+') stack_num[num_top++] = (a + b);
                    else if (c == '*') stack_num[num_top++] = (a * b);
                    else if (c == '/') stack_num[num_top++] = (b / a);
                    c = stack_op[--op_top];
                }
            }
            else stack_op[op_top++] = a[i];
        }
    }
    return stack_num[num_top - 1];
}
int main() {
    unsigned char s[32];
    scanf("%s", s);
    printf("%d\n", get_value(s));
    return 0;
}
