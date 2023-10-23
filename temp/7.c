#include <stdio.h>
#include <stdlib.h>

typedef struct node{
    int data;
    struct node* next;
} node;

typedef struct linked_list{
    struct node* head;
} linked_list;

linked_list* create_list() {
    linked_list* list = (linked_list*)malloc(sizeof(linked_list));
    list->head = NULL;
    return list;
}

void insert_at_head(linked_list* list, int val) {
    node* newNode = (node*)malloc(sizeof(node));
    newNode->data = val;
    newNode->next = list->head;
    list->head = newNode;
}

void insert_at_tail(linked_list* list, int val) {
    node* newNode = (node*)malloc(sizeof(node));
    newNode->data = val;
    newNode->next = NULL;

    if (list->head == NULL) {
        list->head = newNode; 
        return;
    }

    node* temp = list->head;
    while (temp->next) {
        temp = temp->next;
    }
        temp->next = newNode;
}

int size_ll(linked_list* list) {
    int size = 0;
    while (list) {
        size++;
        list->head = list->head->next;
    }
    return size;
}

void display_list(linked_list* list) {
    node* temp_node = list->head;
    while (temp_node) {
        printf("%d -> ", temp_node->data);
        temp_node = temp_node->next;
    }
        printf("NULL\n");
}

void delete_from_list(linked_list* list, int target) { 
    if (list->head == NULL)
        return;
    node* current_node = list->head;
    node* previous_node = NULL;

    while (current_node != NULL && current_node->data != target) {
        previous_node = current_node;
        current_node = current_node->next;
    }

    if (current_node == NULL) {
        printf("Value not found!");
        return;
    }

    if (previous_node == NULL)
        list->head = current_node->next;
    else 
        previous_node->next = current_node->next;

    free(current_node);
}

int main() {
    linked_list *list1 = create_list();
    linked_list *list2 = create_list();
    
    for (int i = 1; i <= 10; insert_at_tail(list1, i++));
    for (int i = 1; i <= 10; insert_at_head(list2, i++));
    
    delete_from_list(list1, 2);
    delete_from_list(list2, 2);

    display_list(list1);
    display_list(list2);
}