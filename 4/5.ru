import csv

def read_csv_and_sum_column(file_path, column_name):
    """Считывает данные из CSV-файла и возвращает сумму значений указанного столбца."""
    total_sum = 0
    column_found = False

    with open(file_path, mode='r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        
        if column_name not in reader.fieldnames:
            raise ValueError(f"Столбец '{column_name}' не найден в CSV-файле.")

        for row in reader:
            try:
                total_sum += float(row[column_name])  
            except ValueError:
                print(f"Не удалось преобразовать значение '{row[column_name]}' в число. Пропускаем.")

    return total_sum

def main():
    file_path = 'your_file.csv'  
    column_name = 'column_name'    

    try:
        total = read_csv_and_sum_column(file_path, column_name)
        print(f"Сумма значений в столбце '{column_name}': {total}")
    except ValueError as e:
        print(e)

if __name__ == "__main__":
    main()