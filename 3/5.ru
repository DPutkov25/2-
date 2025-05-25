import xml.etree.ElementTree as ET

def load_products(xml_file):
    """
    Загружает товары из XML-файла и возвращает список товаров.
    
    :param xml_file: Путь к XML-файлу
    :return: Список товаров
    """
    tree = ET.parse(xml_file)
    root = tree.getroot()
    
    products = []
    for product in root.findall('product'):
        name = product.find('name').text
        category = product.find('category').text
        price = float(product.find('price').text)
        products.append({'name': name, 'category': category, 'price': price})
    
    return products

def sort_products(products, by='price'):
    """
    Сортирует товары по заданному критерию.
    
    :param products: Список товаров
    :param by: Критерий сортировки (name, category, price)
    :return: Отсортированный список товаров
    """
    return sorted(products, key=lambda x: x[by])

def filter_products(products, category):
    """
    Фильтрует товары по категории.
    
    :param products: Список товаров
    :param category: Категория для фильтрации
    :return: Отфильтрованный список товаров
    """
    return [product for product in products if product['category'] == category]

def calculate_total_cost(products):
    """
    Рассчитывает общую стоимость товаров.
    
    :param products: Список товаров
    :return: Общая стоимость
    """
    return sum(product['price'] for product in products)

def display_products(products):
    """Выводит информацию о товарах в табличном виде."""
    print(f"{'Name':<20} {'Category':<15} {'Price':<10}")
    print('-' * 45)
    for product in products:
        print(f"{product['name']:<20} {product['category']:<15} {product['price']:<10.2f}")

xml_file = 'products.xml'
products = load_products(xml_file)

print("Все товары:")
display_products(products)

sorted_products = sort_products(products, by='price')
print("\nТовары, отсортированные по цене:")
display_products(sorted_products)

category_to_filter = 'Electronics'
filtered_products = filter_products(products, category_to_filter)
print(f"\nТовары в категории '{category_to_filter}':")
display_products(filtered_products)

total_cost = calculate_total_cost(products)
print(f"\nОбщая стоимость всех товаров: {total_cost:.2f}")