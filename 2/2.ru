class Soda:
    def __init__(self, add_in=None):
        self.add_in = add_in

    def show_my_drink(self):
        if self.add_in:
            print(f"Газировка и {self.add_in}")
        else:
            print("Обычная")