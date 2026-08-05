#include <iostream>
using namespace std;

// Merge Sort function
void mergeSort(int arr[], int n) {
    if (n > 1) {
        int mid = n / 2;

        int left[mid];
        int right[n - mid];

        // Copy elements into left array
        for (int i = 0; i < mid; i++) {
            left[i] = arr[i];
        }

        // Copy elements into right array
        for (int i = mid; i < n; i++) {
            right[i - mid] = arr[i];
        }

        // Sort left and right arrays
        mergeSort(left, mid);
        mergeSort(right, n - mid);

        int i = 0, j = 0, k = 0;

        // Merge left and right arrays
        while (i < mid && j < n - mid) {
            if (left[i] < right[j]) {
                arr[k] = left[i];
                i++;
            }
            else {
                arr[k] = right[j];
                j++;
            }
            k++;
        }

        // Copy remaining elements of left
        while (i < mid) {
            arr[k] = left[i];
            i++;
            k++;
        }

        // Copy remaining elements of right
        while (j < n - mid) {
            arr[k] = right[j];
            j++;
            k++;
        }
    }
}

int main() {
    int n;

    cout << "Enter the number of elements: ";
    cin >> n;

    int arr[n];

    cout << "Enter " << n << " elements:" << endl;

    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    mergeSort(arr, n);

    cout << "Sorted array: ";

    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }

    return 0;
}
