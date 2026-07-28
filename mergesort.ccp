def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        left = arr[:mid]
        right = arr[mid:]
        merge_sort(left)
        merge_sort(right)
        i = j = k = 0
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                arr[k] = left[i]
                i += 1
            else:
                arr[k] = right[j]
                j += 1
            k += 1
        # Copy remaining elements of left[]
        while i < len(left):
            arr[k] = left[i]
            i += 1
            k += 1
        # Copy remaining elements of right[]
        while j < len(right):
            arr[k] = right[j]
            j += 1
            k += 1
# Main Program
n = int(input("Enter the number of elements: "))
arr = []
print("Enter", n, "elements:")
for i in range(n):
    arr.append(int(input()))
merge_sort(arr)
print("Sorted array:", end=" ")
for i in arr:
    print(i, end=" ")
