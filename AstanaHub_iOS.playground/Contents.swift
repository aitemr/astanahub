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
