def is_palindrome(s):
    cleaned = re.sub(r'[\W_]', '', s).lower()
    return cleaned == cleaned[::-1]

def check_palindrome():
    user_input = input("Введите строку: ")
    if is_palindrome(user_input):
        print("Строка является палиндромом.")
    else:
        print("Строка не является палиндромом.")

check_palindrome()