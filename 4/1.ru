import itertools

def generate_combinations(word):
    """Генерация всех уникальных комбинаций букв в слове."""
    unique_letters = sorted(set(word))
    
    combinations = set()
    
    for i in range(1, len(unique_letters) + 1):
        perms = itertools.permutations(unique_letters, i)
        combinations.update([''.join(p) for p in perms])

    return sorted(combinations)

def main():
    word = input("Введите слово: ")
    
    combinations = generate_combinations(word)
    
    print("Все уникальные комбинации букв:")
    for combo in combinations:
        print(combo)
    
    with open('word_combinations.txt', 'w', encoding='utf-8') as file:
        for combo in combinations:
            file.write(combo + '\n')
    
    print("Комбинации сохранены в файл 'word_combinations.txt'.")

if __name__ == "__main__":
    main()