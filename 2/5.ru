class Library:
    def __init__(self):
        self.book_list = []  

    def add_book(self, book_title):
        """Добавить книгу в список."""
        self.book_list.append(book_title)
        print(f'Книга "{book_title}" добавлена в библиотеку.')

    def remove_book(self, book_title):
        """Удалить книгу из списка."""
        if book_title in self.book_list:
            self.book_list.remove(book_title)
            print(f'Книга "{book_title}" удалена из библиотеки.')
        else:
            print(f'Книга "{book_title}" не найдена в библиотеке.')

    def find_book(self, book_title):
        """Найти книгу по названию."""
        if book_title in self.book_list:
            print(f'Книга "{book_title}" найдена в библиотеке.')
        else:
            print(f'Книга "{book_title}" не найдена в библиотеке.')

    def show_books(self):
        """Показать все книги в библиотеке."""
        if self.book_list:
            print("Список книг в библиотеке:")
            for book in self.book_list:
                print(f'- {book}')
        else:
            print("Библиотека пуста.")