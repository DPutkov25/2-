def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def sum_of_primes_in_range():
    a = int(input("Введите начало интервала (a): "))
    b = int(input("Введите конец интервала (b): "))
    prime_sum = sum(num for num in range(a, b + 1) if is_prime(num))
    print(f"Сумма всех простых чисел в интервале от {a} до {b}: {prime_sum}")

sum_of_primes_in_range()