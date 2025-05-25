class BankAccount:
    def __init__(self, account_number, owner):
        self.account_number = account_number  
        self.owner = owner  
        self.balance = 0.0  

    def deposit(self, amount):
        """Пополняет счет с учетом комиссии 1%."""
        commission = amount * 0.01
        total_amount = amount - commission
        if total_amount > 0:
            self.balance += total_amount
            print(f"На счет {self.account_number} добавлено {total_amount:.2f} с учетом комиссии {commission:.2f}.")
        else:
            print("Ошибка: сумма пополнения должна быть больше комиссии.")

    def withdraw(self, amount):
        """Снимает средства с учетом комиссии 1%."""
        commission = amount * 0.01
        total_withdraw = amount + commission
        
        if total_withdraw <= self.balance:
            self.balance -= total_withdraw
            print(f"Со счета {self.account_number} снято {amount:.2f} с учетом комиссии {commission:.2f}.")
        else:
            print("Ошибка: недостаточно средств на счете.")

    def check_balance(self):
        """Проверяет текущий баланс счета."""
        print(f"Текущий баланс счета {self.account_number}: {self.balance:.2f}")