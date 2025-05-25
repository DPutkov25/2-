def quicksort(arr):
    """Реализация алгоритма быстрой сортировки."""
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr[len(arr) // 2]
        left = [x for x in arr if x < pivot]
        middle = [x for x in arr if x == pivot]
        right = [x for x in arr if x > pivot]
        return quicksort(left) + middle + quicksort(right)

def main():
    numbers = [34, 7, 23, 32, 5, 62]
    
    print("Исходный список:", numbers)
    
    sorted_numbers = quicksort(numbers)
    
    print("Отсортированный список:", sorted_numbers)
    
    with open('sorted_numbers.txt', 'w', encoding='utf-8') as file:
        file.write(', '.join(map(str, sorted_numbers)))
    
    print("Отсортированный список сохранен в файл 'sorted_numbers.txt'.")

if __name__ == "__main__":
    main()