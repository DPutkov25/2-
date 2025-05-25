import os
import csv
from collections import defaultdict

def load_data_from_directory(directory):
    """Загружает данные пользователей из всех CSV-файлов в указанной директории."""
    user_data = []
    for filename in os.listdir(directory):
        if filename.endswith('.csv'):
            file_path = os.path.join(directory, filename)
            with open(file_path, mode='r', encoding='utf-8') as file:
                reader = csv.DictReader(file)
                for row in reader:
                    user_data.append(row)
    return user_data

def analyze_data(users):
    """Анализирует данные, собирая статистику по возрасту, полу и местоположению."""
    age_stats = defaultdict(int)
    gender_stats = defaultdict(int)
    location_stats = defaultdict(int)
    
    for user in users:
        age_stats[int(user['age'])] += 1
        gender_stats[user['gender']] += 1
        location_stats[user['location']] += 1
    
    return age_stats, gender_stats, location_stats

def filter_users(users, age=None, gender=None, location=None):
    """Фильтрует пользователей по заданным критериям."""
    filtered_users = users
    if age is not None:
        filtered_users = [user for user in filtered_users if int(user['age']) == age]
    if gender is not None:
        filtered_users = [user for user in filtered_users if user['gender'] == gender]
    if location is not None:
        filtered_users = [user for user in filtered_users if user['location'] == location]
    return filtered_users

def display_statistics(age_stats, gender_stats, location_stats):
    """Выводит собранную статистику на экран."""
    print("\nСтатистика по возрасту:")
    for age, count in sorted(age_stats.items()):
        print(f"Возраст {age}: {count} пользователей")
    
    print("\nСтатистика по полу:")
    for gender, count in gender_stats.items():
        print(f"{gender}: {count} пользователей")
    
    print("\nСтатистика по местоположению:")
    for location, count in location_stats.items():
        print(f"{location}: {count} пользователей")

directory = 'data'
users = load_data_from_directory(directory)

age_stats, gender_stats, location_stats = analyze_data(users)

display_statistics(age_stats, gender_stats, location_stats)

filtered_age = 30
filtered_gender = 'Male'
filtered_location = 'New York'

print("\nФильтруем пользователей:")
filtered_users = filter_users(users, age=filtered_age)
print(f"\nПользователи с возрастом {filtered_age}:")
for user in filtered_users:
    print(user)

filtered_users_gender = filter_users(users, gender=filtered_gender)
print(f"\nПользователи пола '{filtered_gender}':")
for user in filtered_users_gender:
    print(user)

filtered_users_location = filter_users(users, location=filtered_location)
print(f"\nПользователи из '{filtered_location}':")
for user in filtered_users_location:
    print(user)