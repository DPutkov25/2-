with open("example.txt", "w", encoding='utf-8') as file:
    file.write("Это первая строка.\n")
    file.write("Это вторая строка.\n")
    file.write("Это третья строка.\n")

def read_file(file_name):
    """Читает содержимое файла и выводит его на экран."""
    try:
        with open(file_name, "r", encoding='utf-8') as file:
            content = file.read()
            print("Содержимое файла:")
            print(content)
    except FileNotFoundError:
        print(f"Файл '{file_name}' не найден.")

read_file("example.txt")