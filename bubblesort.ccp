n = int(input("Enter the number of elements: "))
arr = []
print(f"Enter {n} elements:")
for i in range(n):
    arr.append(int(input()))
for i in range(n - 1):
    for j in range(n - i - 1):
        if arr[j] > arr[j + 1]:
            arr[j], arr[j + 1] = arr[j + 1], arr[j]
print("Sorted array in ascending order:", end=" ")
for num in arr:
    print(num, end=" ")
