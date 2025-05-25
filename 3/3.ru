import csv

def process_weather_data(file_name):
    """
    Обрабатывает CSV-файл с данными о погоде,
    вычисляет среднее, минимальное и максимальное значения температуры.
    """
    total_temperature = 0
    count = 0
    min_temperature = float('inf') 
    max_temperature = float('-inf')  
    
    try:
        with open(file_name, mode='r', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                try:
                    temperature = float(row['temperature'])
                    
                    total_temperature += temperature
                    count += 1
                    
                    if temperature < min_temperature:
                        min_temperature = temperature
                    if temperature > max_temperature:
                        max_temperature = temperature
                except ValueError:
                    print(f"Ошибка преобразования значения температуры в строке: {row}")
    
        if count > 0:
            average_temperature = total_temperature / count
            print(f"Средняя температура: {average_temperature:.2f}")
            print(f"Минимальная температура: {min_temperature:.2f}")
            print(f"Максимальная температура: {max_temperature:.2f}")
        else:
            print("Не найдено данных для обработки.")
    
    except FileNotFoundError:
        print(f"Файл '{file_name}' не найден.")
