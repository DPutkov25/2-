from collections import Counter
import re

def read_file(file_path):
    """Чтение содержимого файла."""
    with open(file_path, 'r', encoding='utf-8') as file:
        return file.read().lower()  

def count_words(text):
    """Подсчет наиболее часто встречающихся слов."""
    words = re.findall(r'\b\w+\b', text)
    return Counter(words)

def main():
    file_path = 'your_file.txt'
    
    text = read_file(file_path)
    word_counts = count_words(text)

    most_common_words = word_counts.most_common(10)

    print("Наиболее часто встречающиеся слова:")
    for word, count in most_common_words:
        print(f"{word}: {count} раз")

if __name__ == "__main__":
    main()