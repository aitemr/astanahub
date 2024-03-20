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

// #7 Напишите программу, которая запрашивает у пользователя два числа и выводит на консоль большее из них. Sample Input: 8- 11 Sample Output: 11

// Функция для определения большего из двух чисел
func maxNumber(_ num1: Int, _ num2: Int) -> Int {
    return max(num1, num2)
}

// Ввод двух чисел с клавиатуры
print("Введите первое число:")
if let input1 = readLine(), let number1 = Int(input1) {
    print("Введите второе число:")
    if let input2 = readLine(), let number2 = Int(input2) {
        let result = maxNumber(number1, number2)
        print("Большее число: \(result)")
    } else {
        print("Ошибка: Введите корректное второе число.")
    }
} else {
    print("Ошибка: Введите корректное первое число.")
}


//1) sum-1-n Дается число n. Вернуть сумму от 1 до n без использования циклов. Ограничения 1 <= n <= 65535 Sample Input: 10 Sample Output: 55 2) Complete the Word Дан набор букв и слово и надо проверить можно ли собрать из этих букв данное слово. Нельзя убирать буквы но можно добавлять буквы. Пример: Sample Input: "butl" "beautiful" Sample Output: true 3) License Plate Путешествуя по Европе, необходимо обратить внимание на то, как отображается номерной знак в данной стране. При пересечении границы нужно припарковаться на обочине, открутить табличку, перегруппировать согласно местным правилам, прикрепить ее обратно и продолжить путь. Создайте решение, которое может форматировать номер DMV в номерной знак с правильной группировкой. Входные данные функции состоят из строки s и длины группы n. Вывод должен состоять из символов и цифр верхнего регистра. Новые группы создаются справа налево и соединяются знаком -. Исходный порядок номеров DMV сохранен. Sample Input: 5F3Z-2e-9-w 4 Sample Output: 5F3Z-2E9W 4) digit Дается число a. Вывести в консоль цифру в середине в числе. Если в числе нет цифры по середине надо взять цифру слева Пример цифра в середине у числа 678 - это 7. Ограничения Запрещено использовать тип String a > 9 Sample Input: 678 Sample Output: 7

// Сумма от 1 до n без использования циклов:


func sumUpToN(_ n: Int) -> Int {
    return n * (n + 1) / 2
}

let n = 10
let result2 = sumUpToN(n)
print(result2)

// Проверка возможности составить слово из набора букв:

func canConstruct(_ letters: String, _ word: String) -> Bool {
    var letterCount = [Character: Int]()
    for letter in letters {
        letterCount[letter, default: 0] += 1
    }
    
    for char in word {
        if let count = letterCount[char], count > 0 {
            letterCount[char] = count - 1
        } else {
            return false
        }
    }
    
    return true
}

let letters = "butl"
let word = "beautiful"
let result3 = canConstruct(letters, word)
print(result3)

// Форматирование номерного знака:

func formatLicensePlate(_ s: String, _ n: Int) -> String {
    let filteredString = s.filter { $0 != "-" }
    var formattedString = ""
    var counter = 0
    
    for char in filteredString.reversed() {
        if counter == n {
            formattedString.insert("-", at: formattedString.startIndex)
            counter = 0
        }
        formattedString.insert(char, at: formattedString.startIndex)
        counter += 1
    }
    
    return formattedString.uppercased()
}

let s = "5F3Z-2e-9-w"
let x = 4
let result4 = formatLicensePlate(s, x)
print(result4)


// Цифра в середине числа:

func middleDigit(_ number: Int) -> Int {
    var num = number
    var digitsCount = 0
    
    while num > 0 {
        digitsCount += 1
        num /= 10
    }
    
    num = number
    var middleDigit = 0
    var middleIndex = digitsCount / 2
    
    if digitsCount % 2 == 0 {
        middleIndex -= 1
    }
    
    for _ in 0..<middleIndex {
        middleDigit = num % 10
        num /= 10
    }
    
    return middleDigit
}

let number = 678
let result5 = middleDigit(number)
print(result5)

// Допишите цикл так чтобы вывести все имена согласно ниже тестам Sample Input: Sample Output: Hello, Anna! Hello, Alex! Hello, Brian! Hello, Jack! Допишите цикл так чтобы вывести все имена согласно ниже тестам Sample Input: Sample Output: cats have 4 legs spiders have 8 legs ants have 6 legs Допишите цикл так чтобы вывести 3 в 10-й степени. Sample Input: Sample Output: 3 to the power of 10 is 59049 Допишите цикл так чтобы вывести все буквы согласно ниже тестам Sample Input: Sample Output: The letter is A The letter is S The letter is T The letter is A The letter is N The letter is A Напишите программу, которая выведет как индекс, так и значение числа. Sample Input: Sample Output: 0: A 1: B 2: C 3: D

// Задача 1: Вывести все имена
let names = ["Anna", "Alex", "Brian", "Jack"]

print("Задача 1:")
for name in names {
    print("Hello, \(name)!")
}
print()

// Задача 2: Вывести информацию о количестве ног у животных
let animals = ["cats": 4, "spiders": 8, "ants": 6]

print("Задача 2:")
for (animal, legs) in animals {
    print("\(animal) have \(legs) legs")
}
print()

// Задача 3: Возвести число в 10-ю степень
let base = 3
var result = 1

for _ in 1...10 {
    result *= base
}

print("Задача 3:")
print("\(base) to the power of 10 is \(result)")
print()

// Задача 4: Вывести все буквы из заданной строки
let word1 = "ASTANA"

print("Задача 4:")
for letter in word1 {
    print("The letter is \(letter)")
}
print()

// Задача 5: Вывести индекс и значение элементов
let letters2 = ["A", "B", "C", "D"]

print("Задача 5:")
for (index, letter) in letters2.enumerated() {
    print("\(index): \(letter)")
}

// Comparison Function
func compareNumbers(_ a: Int, _ b: Int) -> Int {
    if a > b {
        return 1
    } else if a < b {
        return -1
    } else {
        return 0
    }
}

// Max of Three Numbers
func maxOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max(a, max(b, c))
}

// Sum of Squares from 1 to n
func sumOfSquares(_ n: Int) -> Int {
    return (n * (n + 1) * (2 * n + 1)) / 6
}

// Print Even Numbers in a Range
func printEvenNumbers(_ a: Int, _ b: Int) {
    for num in a...b {
        if num % 2 == 0 {
            print(num, terminator: " ")
        }
    }
}

// Power Function
func power(_ a: Int, _ b: Int) -> Int {
    var result = 1
    for _ in 0..<b {
        result *= a
    }
    return result
}

// Calculate Deposit Function
func calculateDeposit(_ n: Int, _ k: Double, _ b: Double) -> Double {
    let interest = (k / 100) * b
    return b + (Double(n) * interest)
}

// Min Function for Arrays
func min(_ array: [Int]) -> Int {
    return array.min() ?? 0
}

// Range Function for Arrays
func range(_ n: Int) -> [Int] {
    return Array(1...n)
}

// Sum Function for Arrays
func sum(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}

// Sort Function for Arrays
func sort(_ array: inout [Int]) {
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] > array[j] {
                let temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
}

// Test the functions with sample inputs

print(compareNumbers(1, 0)) // Output: 1

print(maxOfThree(42, 1, 0)) // Output: 42

print(sumOfSquares(3)) // Output: 14

printEvenNumbers(0, 4) // Output: 0 2 4

print(power(2, 6)) // Output: 64

print(calculateDeposit(1, 5, 1000)) // Output: 1050.0

print(min([1, 2, 3])) // Output: 1

let arr = range(5)
print(arr) // Output: [1, 2, 3, 4, 5]

print(sum([1, 2, 3])) // Output: 6

var array = [3, 2, 1]
sort(&array)
print(array) // Output: [1, 2, 3]


// 1. Проверка четности числа:
func checkEvenOdd(_ number: Int) -> String {
    return number % 2 == 0 ? "Число \(number) - четное" : "Число \(number) - нечетное"
}

// 2. Проверка на палиндром:
func isPalindrome(_ string: String) -> Bool {
    let cleanString = string.lowercased().replacingOccurrences(of: " ", with: "")
    return cleanString == String(cleanString.reversed())
}

// 3. Проверка числа на простоту:
func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// 4. Проверка корректности даты:
func isValidDate(_ date: String) -> Bool {
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "dd.MM.yyyy"
    if dateFormatterGet.date(from: date) != nil {
        return true
    } else {
        return false
    }
}

// 5. Поиск совершенных чисел в заданном диапазоне:
func findPerfectNumbers(inRange range: ClosedRange<Int>) -> [Int] {
    var perfectNumbers = [Int]()
    for number in range {
        var sum = 0
        for i in 1..<number {
            if number % i == 0 {
                sum += i
            }
        }
        if sum == number {
            perfectNumbers.append(number)
        }
    }
    return perfectNumbers
}

// 6. Проверка числа на принадлежность к последовательности Фибоначчи:
func isFibonacci(_ number: Int) -> Bool {
    var a = 0, b = 1
    while b < number {
        let sum = a + b
        a = b
        b = sum
    }
    return b == number
}

// 7. Проверка числа на совершенство:
func isPerfectNumber(_ number: Int) -> Bool {
    var sum = 0
    for i in 1..<number {
        if number % i == 0 {
            sum += i
        }
    }
    return sum == number
}

// 8. Определение сезона года по дате:
func getSeason(forDate date: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy"
    guard let inputDate = dateFormatter.date(from: date) else {
        return "Некорректная дата"
    }
    let calendar = Calendar.current
    let month = calendar.component(.month, from: inputDate)
    switch month {
        case 12, 1, 2:
            return "Зима"
        case 3...5:
            return "Весна"
        case 6...8:
            return "Лето"
        case 9...11:
            return "Осень"
        default:
            return "Неверный месяц"
    }
}

// Тесты для всех задач:
print("1. \(checkEvenOdd(5))")
print("2. \"abba\" - Палиндром: \(isPalindrome("abba"))")
print("3. Число 17 - Простое: \(isPrime(17))")
print("4. Дата \"20.01.2002\" - Корректная: \(isValidDate("20.01.2002"))")
print("5. Совершенные числа в диапазоне от 0 до 1000: \(findPerfectNumbers(inRange: 0...1000))")
print("6. Число 25 - Число Фибоначчи: \(isFibonacci(25))")
print("7. Число 28 - Совершенное число: \(isPerfectNumber(28))")
print("8. Дата \"20.01.2002\" - Сезон года: \(getSeason(forDate: "20.01.2002"))")
