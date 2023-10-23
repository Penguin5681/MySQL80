#include <stdio.h>
#include <stdbool.h>

#define MAX_SIZE 10001

typedef struct {
    char data[MAX_SIZE];
    int top;
} stack;

void init(stack *st) {
    st->top = -1;
}

bool is_full(stack *st) {
    return st->top == MAX_SIZE - 1;
}

bool is_empty(stack *st) {
    return st->top == -1;
}

void push(stack *st, char ch) {
    if (is_full(st))
        return;
    st->data[++st->top] = ch;
}

char pop(stack *st) { 
    if (is_empty(st))
        return '\0'; 
    return st->data[st->top--];
}

char top(stack *st) { 
    if (is_empty(st))
        return '\0'; 
    return st->data[st->top];
}

bool is_operator(char ch) {
    return (ch == '+' || ch == '-' || ch == '/' || ch == '*');
}

int get_precedence(char ch) {
    if (ch == '*' || ch == '/')
        return 2;
    else if (ch == '+' || ch == '-')
        return 1;
    return 0;
}

void infix_to_postfix(char *infix, char *postfix) {
    stack st;
    init(&st);

    int i, j;
    for (i = 0, j = 0; infix[i] != '\0'; i++) {
        if (!is_operator(infix[i]))
            postfix[j++] = infix[i];
        else {
            while (st.top >= 0 && get_precedence(top(&st)) >= get_precedence(infix[i])) { 
                postfix[j++] = pop(&st);
            }
            push(&st, infix[i]);
        }
    }

    while (!is_empty(&st)) {
        postfix[j++] = pop(&st);
    }

    postfix[j] = '\0';
}

int main() {
    char infix[] = "5+2*3/2";
    char postfix[100];
    infix_to_postfix(infix, postfix);
    printf("%s\n", postfix);
    return 0;
}
