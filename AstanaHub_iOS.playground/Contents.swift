import Foundation

// #1 Задание констант
let const1 = 100
let const2 = 100

// Присвоение переменных из констант и переменных
var var1 = const1
var var2 = const2
var var3 = const1 + const2

// Вывод результата
print("\(var1) \(var2) \(var3)")


// #2 Задание имени футболиста
let footballerName = "Cristiano"

// Вывод имени футболиста
print(footballerName)

// #3 Напишите программу, которая определяет, является ли введенное пользователем число четным или нечетным. если число четное написать 0 если число нечетное написать 1 Sample Input: 8 Sample Output: 0

func checkEvenOdd(_ number: Int) -> Int {
    if number % 2 == 0 {
        return 0 // Четное число
    } else {
        return 1 // Нечетное число
    }
}

// Ввод числа с клавиатуры
print("Введите число:")
if let input = readLine(), let number = Int(input) {
    let result = checkEvenOdd(number)
    print("Результат: \(result)")
} else {
    print("Ошибка: Введите корректное целое число.")
}

// #4 Напишите программу, которая запрашивает у пользователя день недели и выводит на консоль номер этого дня. Sample Input: понедельник Sample Output: 1

// Функция для определения номера дня недели
func getDayNumber(_ day: String) -> Int? {
    let daysOfWeek = ["понедельник", "вторник", "среда", "четверг", "пятница", "суббота", "воскресенье"]
    
    if let index = daysOfWeek.firstIndex(where: { $0.caseInsensitiveCompare(day) == .orderedSame }) {
        return index + 1 // Нумерация дней начинается с 1
    } else {
        return nil // Возвращаем nil, если день недели не найден
    }
}

// Ввод дня недели с клавиатуры
print("Введите день недели:")
if let input = readLine() {
    if let dayNumber = getDayNumber(input) {
        print("Номер дня недели: \(dayNumber)")
    } else {
        print("Ошибка: Некорректное название дня недели.")
    }
} else {
    print("Ошибка: Введите название дня недели.")
}

// #5 Напишите программу, которая выводит на консоль скидку для покупателя в зависимости от суммы его покупки. Если стоимость от 0 до 1000 скидка 0% Если стоимость от 1000 до 5000 скидка 5% Если стоимость от 5001 до 10000 скидка 10% если более то скидка 15% Sample Input: 20 Sample Output: 0

// Функция для определения скидки в зависимости от суммы покупки
func calculateDiscount(_ amount: Double) -> Double {
    if amount >= 0 && amount <= 1000 {
        return 0
    } else if amount > 1000 && amount <= 5000 {
        return 0.05
    } else if amount > 5000 && amount <= 10000 {
        return 0.1
    } else {
        return 0.15
    }
}


// Ввод стоимости покупки с клавиатуры
print("Введите сумму покупки:")
if let input = readLine(), let amount = Double(input) {
    let discount = calculateDiscount(amount)
    let discountPercentage = discount * 100
    print("Скидка: \(discountPercentage)%")
} else {
    print("Ошибка: Введите корректную сумму покупки.")
}


// #6 last-digit Дается число a. Вывести в консоль последнюю цифру в числе. Пример Последняя цифра у числа 78 - это 8. Ограничения Запрещено использовать тип String a > 0 Sample Input: 78 Sample Output: 8

// Функция для определения последней цифры числа
func getLastDigit(_ number: Int) -> Int {
    return abs(number) % 10
}

// Ввод числа с клавиатуры
print("Введите число:")
if let input = readLine(), let number = Int(input) {
    if number > 0 {
        let lastDigit = getLastDigit(number)
        print("Последняя цифра у числа \(number) - это \(lastDigit).")
    } else {
        print("Ошибка: Введите положительное число.")
    }
} else {
    print("Ошибка: Введите корректное целое число.")
}
