#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define MAX_SIZE 100

struct Stack {
    int top;
    int arr[MAX_SIZE];
};

void push(struct Stack* st, int value) {
    if (st->top == MAX_SIZE - 1) {
        printf("Stack overflow!\n");
        exit(1);
    }

    st->top++;
    st->arr[st->top] = value;
}

int pop(struct Stack* st) {
    if (st->top == -1) {
        printf("Stack underflow!\n");
        exit(1);
    }

    int value = st->arr[st->top];
    st->top--;
    return value;
}

int evaluate_postfix(const char *postfix) {
    struct Stack st;
    st.top = -1;

    for (int i = 0; i < strlen(postfix); i++) {
        if (postfix[i] >= '0' && postfix[i] <= '9')
            push(&st, postfix[i] - '0');
        else {
            int op2 = pop(&st);
            int op1 = pop(&st);
        
            switch(postfix[i]) {
                case '+': push(&st, op1 + op2); break;
                case '-': push(&st, op1 - op2); break;
                case '/': push(&st, op1 / op2); break;
                case '*': push(&st, op1 * op2); break;
                case '^': push(&st, pow(op1, op2)); break;
            }
        }
    }
    return pop(&st);
}

int main() {
    char s[] = "523*2/+";
    printf("%d", evaluate_postfix(s));
}