#include <stdio.h>
#include <string.h>

int main() {
    // char *string[] = {"Hi", "How are you?"};
    // for (int i = 0; i < 2; i++)
    //     printf("%s ", string[i]);
    char string[] = "This is Pranav Sinha";


    char newString[strlen(string)];
    strcpy(newString, string);
    // puts(newString);

    printf("\n %s", newString);
    printf("\n %d ", strcmp(newString, string));

    char str1[] = "I Love ";
    char str2[] = "Pizza";

    strcat(str1, str2);
    printf("\n%s", str1);
}