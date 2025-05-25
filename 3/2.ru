with open("data.csv", mode="w", newline='', encoding='utf-8') as csvfile:
    fieldnames = ["Имя", "Фамилия", "Возраст"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    
    writer.writerow({"Имя": "Иван", "Фамилия": "Иванов", "Возраст": 25})
    writer.writerow({"Имя": "Мария", "Фамилия": "Петрова", "Возраст": 30})
    writer.writerow({"Имя": "Алексей", "Фамилия": "Сидоров", "Возраст": 28})

def read_csv(file_name):
    """Читает содержимое CSV-файла и выводит его на экран в удобном формате."""
    try:
        with open(file_name, mode="r", encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            print("Содержимое файла:")
            for row in reader:
                print(f"Имя: {row['Имя']}, Фамилия: {row['Фамилия']}, Возраст: {row['Возраст']}")
    except FileNotFoundError:
        print(f"Файл '{file_name}' не найден.")

read_csv("data.csv")