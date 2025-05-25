class Product:
    def __init__(self, name, price, quantity=0):
        self.name = name          
        self.price = price        
        self.quantity = quantity 

    def increase_quantity(self, amount):
        """Увеличивает количество товара на заданное значение."""
        if amount < 0:
            print("Количество не может быть отрицательным.")
            return
        self.quantity += amount
        print(f"Количество продукта '{self.name}' увеличено на {amount}. Новое количество: {self.quantity}")

    def decrease_quantity(self, amount):
        """Уменьшает количество товара на заданное значение."""
        if amount < 0:
            print("Количество не может быть отрицательным.")
            return
        if amount > self.quantity:
            print(f"Недостаточно товара '{self.name}' на складе для уменьшения на {amount}.")
            return
        self.quantity -= amount
        print(f"Количество продукта '{self.name}' уменьшено на {amount}. Новое количество: {self.quantity}")

    def total_cost(self):
        """Выводит общую стоимость товара с учетом текущего количества."""
        total = self.price * self.quantity
        print(f"Общая стоимость продукта '{self.name}' (количество: {self.quantity}): {total:.2f}")
        return total
