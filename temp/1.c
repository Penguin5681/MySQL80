#include <stdio.h>
#include <stdbool.h>

bool linear_search(int arr[], int target, int size) {
    
    if (!size)
        return false;

    for (int i = 0; i < size; i++) 
        if (arr[i] == target)
            return true;
    
    return false;
}

bool binary_search(int arr[], int target, int size) {

    int lo = 0;
    int hi = size - 1;

    while (lo < hi) {
        int mid = lo + (hi - lo) / 2;

        if (arr[mid] == target)
            return true;
        else if (arr[mid] > target) 
            hi = mid - 1;
        else 
            lo = mid + 1;
    }
    return false;
}

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void bubble_sort(int arr[], int size) {
    if (size) {
        for (int i = 0; i < size; i++) {
            for (int j = i + 1; j < size; j++) 
                if (arr[i] > arr[j])
                    swap(&arr[i], &arr[j]);
        }
    }
}

void insertion_sort(int arr[], int n) {
    if (n <= 1)
        return;

    insertion_sort(arr, n - 1);

    int key = arr[n - 1];
    int i = n - 2;

    while (i >= 0 && arr[i] > key) {
        arr[i + 1] = arr[i];
        i--;
    }

    arr[i + 1] = key;
}

void reverse_array(int arr[], int n) {
    int lo = 0;
    int hi = n - 1;

    while (lo <= hi)
        swap(&arr[lo++], &arr[hi--]);
}

int add_elements(int arr[], int n) {
    int sum = 0;
    for (int i = 0; i < n; i++)
        sum += arr[i];
    return sum;
}

int largest_element(int arr[], int n) {
    int max = -99999;
    for (int i = 0; i < n; i++) {
        if (arr[i] > max)
            max = arr[i];
    }
    return max;
}

int smallest_element(int arr[], int n) {
    int min = __INT_MAX__;
    for (int i = 0; i < n; i++) {
        if (arr[i] < min)
            min = arr[i];
    }
    return min;
}

void display(int arr[], int m) {
    for (int i = 0; i < m; i++)
        printf("%d ", arr[i]);
}

int main() {
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int unsortedArr[] = {9, 8, 7, 6, 5, 4, 3, 2, 1};

    int size = sizeof(arr) / sizeof(int);
    printf("Linear: %d ", linear_search(arr, 6, size)); // 1 if true, 0 otherwise
    printf("Binary: %d ", binary_search(arr, 7, size));

    insertion_sort(unsortedArr, size);

    printf("\nSorted Array: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", unsortedArr[i]);
    }


    printf("\nSum: %d ", add_elements(arr, size));
    printf("\nLargest: %d ", largest_element(arr, size));
    printf("\nSmallest: %d ", smallest_element(arr, size));

    reverse_array(arr, size);
    printf("\nReversed: ");
    for (int i = 0; i < size; i++) 
        printf("%d ", arr[i]);

}