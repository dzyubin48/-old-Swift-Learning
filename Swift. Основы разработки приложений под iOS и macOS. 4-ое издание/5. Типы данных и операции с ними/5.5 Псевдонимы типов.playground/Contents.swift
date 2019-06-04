import Cocoa

// 1. Объявите строковую константу и запишите в неё ваше имя
let name = "Daniel"

// 2. Объявите переменную типа Double и запишите в неё ваш вес в килограммах
var weight: Double = 68.5

// 3. Объявите переменную типа Int и запишите в неё ваш рост в сантиметрах
var height: Int = 180

// 4. Вычислите ваш индекс массы тела по заданной формуле и запишите его в переменную
var heightInMeters: Double = Double(height) / 100
var index = weight / (heightInMeters * heightInMeters)

// 5. Выведите на консоль текст, содержащий ваше имя и индекс массы тела
print("\(name) \(index)")
