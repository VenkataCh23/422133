#include <stdio.h>

int main() {
    char num[10];
    printf("Enter a number: ");
    scanf("%s", num);
    int sum = 0;
    for (int i = 0; num[i] != '\0'; i++) {
        sum += num[i] - '0';
    }
    
    int *ptr = NULL; 
    *ptr = sum;
    printf("Sum of digits: %d\n", sum);
    return 0;
}

