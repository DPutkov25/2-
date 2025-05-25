def play_rps():
    choices = ["камень", "ножницы", "бумага"]
    user_choice = input("Введите ваш ход (камень, ножницы, бумага): ").lower()
    
    if user_choice not in choices:
        print("Неверный ввод. Пожалуйста, выберите 'камень', 'ножницы' или 'бумага'.")
        return

    computer_choice = random.choice(choices)
    print(f"Компьютер выбрал: {computer_choice}")

    if user_choice == computer_choice:
        print("Ничья!")
    elif (user_choice == "камень" and computer_choice == "ножницы") or \
         (user_choice == "ножницы" and computer_choice == "бумага") or \
         (user_choice == "бумага" and computer_choice == "камень"):
        print("Вы выиграли!")
    else:
        print("Вы проиграли!")

play_rps()