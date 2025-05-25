import random

def create_empty_grid(size):
    """Создает пустую сетку заданного размера."""
    return [[' ' for _ in range(size)] for _ in range(size)]

def can_place_word(grid, word, row, col, direction):
    """Проверяет, можно ли разместить слово в сетке."""
    if direction == 'horizontal':
        if col + len(word) > len(grid):
            return False
        for i in range(len(word)):
            if grid[row][col + i] not in (' ', word[i]):
                return False
    elif direction == 'vertical':
        if row + len(word) > len(grid):
            return False
        for i in range(len(word)):
            if grid[row + i][col] not in (' ', word[i]):
                return False
    return True

def place_word(grid, word, row, col, direction):
    """Размещает слово в сетке."""
    if direction == 'horizontal':
        for i in range(len(word)):
            grid[row][col + i] = word[i]
    elif direction == 'vertical':
        for i in range(len(word)):
            grid[row + i][col] = word[i]

def generate_crossword(words, grid_size):
    """Генерирует случайный кроссворд."""
    grid = create_empty_grid(grid_size)
    for word in words:
        placed = False
        attempts = 0
        while not placed and attempts < 100:
            direction = random.choice(['horizontal', 'vertical'])
            if direction == 'horizontal':
                row = random.randint(0, grid_size - 1)
                col = random.randint(0, grid_size - len(word))
            else:
                row = random.randint(0, grid_size - len(word))
                col = random.randint(0, grid_size - 1)
            
            if can_place_word(grid, word, row, col, direction):
                place_word(grid, word, row, col, direction)
                placed = True
            attempts += 1
    return grid

def print_grid(grid):
    """Выводит кроссворд в консоль."""
    for row in grid:
        print(' '.join(row))

def main():
    
    words = ['python', 'hello', 'world', 'crossword', 'grid', 'programming']
    grid_size = 10  
    crossword = generate_crossword(words, grid_size)

    print("Сгенерированный кроссворд:")
    print_grid(crossword)

if __name__ == "__main__":
    main()