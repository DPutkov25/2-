import numpy as np

class Matrix:
    def __init__(self, data):
        self.data = np.array(data)
    
    def add(self, other_matrix):
        if isinstance(other_matrix, Matrix):
            return Matrix(self.data + other_matrix.data)
        else:
            raise ValueError("Оба аргумента должны быть объектами класса Matrix")
    
    def subtract(self, other_matrix):
        if isinstance(other_matrix, Matrix):
            return Matrix(self.data - other_matrix.data)
        else:
            raise ValueError("Оба аргумента должны быть объектами класса Matrix")
    
    def multiply(self, other_matrix):
        if isinstance(other_matrix, Matrix):
            result = np.dot(self.data, other_matrix.data)
            return Matrix(result)
        else:
            raise ValueError("Оба аргумента должны быть объектами класса Matrix")
    
    def transpose(self):
        return Matrix(np.transpose(self.data))
    
    def determinant(self):
        det_value = np.linalg.det(self.data)
        return det_value
    
    def display(self):
        print(self.data)