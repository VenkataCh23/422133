#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
};

void insertNode(struct Node** head_ref, int data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    new_node->data = data;
    new_node->next = NULL;

    if (*head_ref == NULL) {
        *head_ref = new_node;
    } else {
        struct Node* current = *head_ref;
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = new_node;
    }
}

int main() {
    struct Node* head = NULL;
    insertNode(&head, 10);
    insertNode(&head, 20);

    struct Node* current = head;
    while (current != NULL) {
        printf("%d\n", current->data);
        free(current); 
        current = current->next;
    }

    return 0;
}
