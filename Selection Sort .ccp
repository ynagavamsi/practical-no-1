#include <iostream>
using namespace std;

int main() {
    int n;

    cout << "Enter the number of elements: ";
    cin >> n;

    int arr[n];

    cout << "Enter " << n << " elements:" << endl;

    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    // Selection Sort
    for (int i = 0; i < n; i++) {
        int min_index = i;

        for (int j = i + 1; j < n; j++) {
            if (arr[j] < arr[min_index]) {
                min_index = j;
            }
        }

        // Swap
        int temp = arr[i];
        arr[i] = arr[min_index];
        arr[min_index] = temp;
    }

    cout << "\nSorted array in ascending order:" << endl;

    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }

    return 0;
}
