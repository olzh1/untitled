import math

# Константы
MAX_ITER = 2500  # Ограничение на число итераций

# Исходные данные
X_values = [-0.98, -0.5, 0.1, 0.5, 0.95]

# Ввод точности Eps с клавиатуры
Eps = float(input("Введите точность Eps: "))

# Функция для вычисления суммы ряда
def compute_series(x, eps):
    i = 1  # Номер слагаемого
    s_i = x**2  # Первое слагаемое
    S = s_i  # Частичная сумма
    iteration = 1  # Счетчик итераций

    while abs(s_i) >= eps and iteration < MAX_ITER:
        i += 1
        s_i *= x**2 / ((2 * i) * (2 * i - 1))  # Используем рекуррентную формулу
        S += (-1)**i * s_i  # Учитываем знаки членов ряда
        iteration += 1

    return S, iteration

# Функция для вычисления контрольного значения
def control_function(x):
    return (math.cos(x) - 1) / x**2 + 0.5

# Вывод заголовка таблицы
print(f"{'X':<10} {'S(X)':<15} {'K':<10} {'F(X)':<15} {'|S(X)-F(X)|':<15}")
print("=" * 70)

# Выполнение расчетов для всех значений X
for x in X_values:
    Sx, iterations = compute_series(x, Eps)
    Fx = control_function(x)
    error = abs(Sx - Fx)
    print(f"{x:<10.2f} {Sx:<15.8f} {iterations:<10} {Fx:<15.8f} {error:<15.8f}")
