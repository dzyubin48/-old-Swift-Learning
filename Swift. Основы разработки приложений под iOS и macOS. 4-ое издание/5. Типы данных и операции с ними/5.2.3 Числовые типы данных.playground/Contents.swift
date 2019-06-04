import Cocoa

// Задание №1
// 1. Объявите три пустые константы: одну типа Int, одну типа Float и одну типа Double. Сделайте это в одной строке

// Пустые переменные не компилятся в Playground!
// let firstInt: Int, secondFloat: Float, thirdDouble: Double

// 2. Проинициализируйте для них следующие значения: Int - 18, Float - 16.4, Double 5.7
let firstInt: Int = 18, secondFloat: Float = 16.4, thirdDouble: Double = 5.7

// 3. Найдите сумму все трёх констант и запишите её в переменную типа Float
let sum: Float = Float(firstInt) + secondFloat + Float(thirdDouble)

// 4. Найдите произведение все трёх констант и запишите его в переменную типа Int. Помните, что вам необходимо
// поллучить результат с минимальной погрешностью
let multiply: Int = Int(Double(firstInt) * Double(secondFloat) * thirdDouble)

// 5. Найдите остаток от деления константы типа Float на константу типа Double и запишите её
// в переменную типа Double
let ostatok: Double = Double(secondFloat).truncatingRemainder(dividingBy: thirdDouble)

// 6. Выведите на консоль все три результата с использование поясняющего текста
print("Сумма всех чисел во Float = \(sum)")
print("Произведение всех чисел в Int = \(multiply)")
print("Остаток от деления в Double, второго числа на третье = \(ostatok)")


// Задание №2
// 1. Объявите переменные a и b целочисленного типа данных и присвойте им значение 2 и 3
var a = 2
var b = 3

// 2. Вычислите значение уравнения (a+4b)(a-3b)+a*a и выведите результат на консоль
print((a + 4 * b) * (a - 3 * b) + a * a)


// Задание №3
// 1. Объявите переменные c и d и присвойте им значения 1.75 и 3.25
var c = 1.75
var d = 3.25

// 2. Вычислите значение уравнения .... и выведите результат на консоль
print(2 * pow(Double(c + 1),2) + 3 * (d + 1))


// Задание №4
// 1. Объявите константу length и запишите в неё произвольное целочисленное значение
let length = 25

// 2. Вычислите следующие значения, запишите каждое из них в новую константу и выведите на консоль:
// Площадь квадрата с длиной стороны, равной length. Длину окружности радиусом length.
let square = length * length
print(square)

let lenthgOfCirle = 2 * 3.14 * Double(length)
print(lenthgOfCirle)
