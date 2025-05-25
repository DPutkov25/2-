class Airline:
    def __init__(self):
        self.plane_list = []  
        self.route_list = {} 

    def add_plane(self, plane_model):
        """Добавить самолет в список."""
        self.plane_list.append(plane_model)
        print(f'Самолет модели "{plane_model}" добавлен в авиакомпанию.')

    def remove_plane(self, plane_model):
        """Удалить самолет из списка."""
        if plane_model in self.plane_list:
            self.plane_list.remove(plane_model)
            print(f'Самолет модели "{plane_model}" удален из авиакомпании.')
        else:
            print(f'Самолет модели "{plane_model}" не найден в авиакомпании.')

    def create_route(self, destination_city, plane_model):
        """Создать маршрут для заданного города с указанным самолетом."""
        if plane_model not in self.plane_list:
            print(f'Самолет модели "{plane_model}" не найден в авиакомпании.')
            return

        if destination_city not in self.route_list:
            self.route_list[destination_city] = []
        self.route_list[destination_city].append(plane_model)
        print(f'Маршрут в город "{destination_city}" создан с самолетом модели "{plane_model}".')

    def remove_route(self, destination_city, plane_model):
        """Удалить маршрут для заданного города."""
        if destination_city in self.route_list and plane_model in self.route_list[destination_city]:
            self.route_list[destination_city].remove(plane_model)
            print(f'Маршрут в город "{destination_city}" с самолетом модели "{plane_model}" удален.')
            if not self.route_list[destination_city]:  
                del self.route_list[destination_city]
        else:
            print(f'Маршрут в город "{destination_city}" с самолетом модели "{plane_model}" не найден.')

    def find_plane(self, plane_model):
        """Найти самолет по модели."""
        if plane_model in self.plane_list:
            print(f'Самолет модели "{plane_model}" найден в авиакомпании.')
        else:
            print(f'Самолет модели "{plane_model}" не найден в авиакомпании.')

    def available_routes(self, city):
        """Показать доступные маршруты для заданного города."""
        if city in self.route_list:
            print(f'Доступные маршруты в город "{city}": {self.route_list[city]}')
        else:
            print(f'Нет доступных маршрутов в город "{city}".')

    def show_planes(self):
        """Показать все самолеты в авиакомпании."""
        if self.plane_list:
            print("Список самолетов в авиакомпании:")
            for plane in self.plane_list:
                print(f'- {plane}')
        else:
            print("Список самолетов пуст.")