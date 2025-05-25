import math

class Point:
    def __init__(self, x=0, y=0):
        self.x = x  
        self.y = y  

    def distance_to(self, other):
        """Вычисляет расстояние до другой точки."""
        dist = math.sqrt((self.x - other.x) ** 2 + (self.y - other.y) ** 2)
        print(f"Расстояние между точками: {dist:.2f}")
        return dist

    def move(self, distance, direction):
        """Перемещает точку на заданное расстояние в заданном направлении (в градусах)."""
        radians = math.radians(direction)  
        self.x += distance * math.cos(radians)
        self.y += distance * math.sin(radians)
        print(f"Точка перемещена на {distance} по направлению {direction}°. Новые координаты: ({self.x:.2f}, {self.y:.2f})")

    def is_on_x_axis(self):
        """Проверяет, лежит ли точка на оси X."""
        on_x_axis = self.y == 0
        print(f"Точка находится на оси X: {on_x_axis}")
        return on_x_axis

    def is_on_y_axis(self):
        """Проверяет, лежит ли точка на оси Y."""
        on_y_axis = self.x == 0
        print(f"Точка находится на оси Y: {on_y_axis}")
        return on_y_axis