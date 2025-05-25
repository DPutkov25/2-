import numpy as np

class LinearEquationSolver:
    def __init__(self, coefficients, constants):
        """
        Инициализация класса.
        
        :param coefficients: Матрица коэффициентов (двухмерный массив)
        :param constants: Вектор свободных членов (одномерный массив)
        """
        self.coefficients = np.array(coefficients)
        self.constants = np.array(constants)

    def solve(self):
        """
        Решает систему линейных уравнений.

        :return: Вектор решений или сообщение об ошибке, если уравнение неразрешимо.
        """
        try:
            solutions = np.linalg.solve(self.coefficients, self.constants)
            return solutions
        except np.linalg.LinAlgError as e:
            return f"Ошибка при решении уравнения: {e}"

def main():
    coefficients = [
        [2, 1],
        [5, 7]
    ]
    
    constants = [11, 43]

    solver = LinearEquationSolver(coefficients, constants)
    solutions = solver.solve()

    print("Решения системы уравнений:")
    print(solutions)

if __name__ == "__main__":
    main()