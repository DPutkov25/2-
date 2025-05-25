class Student:
    def __init__(self, name, age):
        self.name = name                  
        self.age = age                    
        self.subjects = {}               

    def add_subject(self, subject, grade):
        """Добавляет предмет и его оценку в список."""
        if subject in self.subjects:
            print(f"Предмет '{subject}' уже существует. Обновляем оценку.")
        self.subjects[subject] = grade
        print(f"Предмет '{subject}' с оценкой {grade} добавлен.")

    def remove_subject(self, subject):
        """Удаляет предмет из списка."""
        if subject in self.subjects:
            del self.subjects[subject]
            print(f"Предмет '{subject}' удален.")
        else:
            print(f"Предмет '{subject}' не найден в списке.")

    def average_grade(self):
        """Расчитывает и возвращает средний балл студента."""
        if not self.subjects:
            print("Список предметов пуст. Средний балл не может быть вычислен.")
            return None
        average = sum(self.subjects.values()) / len(self.subjects)
        print(f"Средний балл студента '{self.name}': {average:.2f}")
        return average