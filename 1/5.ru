def calculate_average_from_csv(file_path):
    with open(file_path, mode='r') as file:
        reader = csv.reader(file)
        columns = list(zip(*reader))  
    averages = []
    for column in columns:
        numbers = [float(num) for num in column if num]  
        if numbers:
            average = sum(numbers) / len(numbers)
            averages.append(average)
        else:
            averages.append(0)  

    return averages