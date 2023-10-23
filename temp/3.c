#include <stdio.h>
#include <stdbool.h>

#define MAX_STACK_SIZE 1001

typedef struct {
    int array[MAX_STACK_SIZE];
    int top;
} stack;

void init_stack(stack* st) {
    st->top = -1;
}

bool is_full(stack* st) {
    return st->top == MAX_STACK_SIZE - 1;
}

bool is_empty(stack* st) {
    return st->top == -1;
}

void push(stack* st, int val) {
    if (is_full(st)) {
        return; 
    }
    st->array[++st->top] = val;
}

void pop(stack* st) {
    if (is_empty(st)) {
        return; 
    }
    st->top--;
}

int top(stack* st) {
    if (!is_empty(st)) {
        return st->array[st->top];
    }
    return -1; 
}

void update_stack(stack* st, int source, int destination) {
    int idx = st->top;
    while (idx >= 0) {
        if (st->array[idx] == source)
            st->array[idx] = destination;
        idx--;
    } 
}


void display_stack(stack* st) {
    if (is_empty(st)) {
        return; 
    }
    int i = st->top;
    while (i >= 0) {
        printf("%d ", st->array[i]);
        i--;
    }
    printf("\n"); 
}

int main() {
    stack st;
    init_stack(&st);

    push(&st, 1);
    push(&st, 2);
    push(&st, 3);
    push(&st, 4);

    display_stack(&st);
    update_stack(&st, 1, 100);
    display_stack(&st);

    return 0;
}
