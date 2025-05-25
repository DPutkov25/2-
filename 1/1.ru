def unique_words_in_reverse_order():
    user_input = input("Введите строку: ")
    words = set(user_input.split())  
    sorted_words = sorted(words, reverse=True)  
    print("Уникальные слова в обратном алфавитном порядке:")
    for word in sorted_words:
        print(word)

unique_words_in_reverse_order()