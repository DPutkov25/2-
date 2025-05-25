import re
from collections import Counter

def load_text_file(file_path):
    """Загружает текст из файла и возвращает его содержимое."""
    with open(file_path, 'r', encoding='utf-8') as file:
        text = file.read()
    return text

def analyze_text(text):
    """Анализирует текст и собирает статистику."""
    text_cleaned = re.sub(r'[^\w\s]', '', text).lower()
    
    words = text_cleaned.split()
    
    word_frequency = Counter(words)
    
    sentences = re.split(r'[.!?]', text)
    sentence_lengths = [len(sentence.split()) for sentence in sentences if sentence.strip()]
    avg_sentence_length = sum(sentence_lengths) / len(sentence_lengths) if sentence_lengths else 0
    
    return word_frequency, avg_sentence_length

def save_statistics_to_file(word_frequency, avg_sentence_length, output_file):
    """Сохраняет статистику в файл."""
    with open(output_file, 'w', encoding='utf-8') as file:
        file.write("Частота слов:\n")
        for word, frequency in word_frequency.items():
            file.write(f"{word}: {frequency}\n")
        file.write("\nСредняя длина предложений: {:.2f} слов\n".format(avg_sentence_length))

def main():
    file_path = 'data.txt'
    output_file = 'statistics.txt'
    
    text = load_text_file(file_path)
    word_frequency, avg_sentence_length = analyze_text(text)
    
    print("Частота слов:")
    for word, frequency in word_frequency.items():
        print(f"{word}: {frequency}")
    print(f"\nСредняя длина предложений: {avg_sentence_length:.2f} слов")
    
    save_statistics_to_file(word_frequency, avg_sentence_length, output_file)
    print(f"\nСтатистика сохранена в файл '{output_file}'.")

if __name__ == "__main__":
    main()