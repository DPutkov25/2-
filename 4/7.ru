import pandas as pd

def read_and_analyze_csv(file_path):
    """
    Читает CSV-файл и выводит статистику по каждому столбцу.

    :param file_path: Путь к файлу CSV
    """
    try:
        data = pd.read_csv(file_path)
        
        print("Статистика по каждому столбцу:\n")
        print(data.describe(include='all'))
        
        print("\nКоличество пропусков в каждом столбце:")
        print(data.isnull().sum())

    except FileNotFoundError:
        print(f"Файл {file_path} не найден.")
    except pd.errors.EmptyDataError:
        print("CSV-файл пуст.")
    except pd.errors.ParserError:
        print("Ошибка чтения файла. Проверьте формат CSV.")

def main():
    file_path = 'data.csv'
    
    read_and_analyze_csv(file_path)

if __name__ == "__main__":
    main()