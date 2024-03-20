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

