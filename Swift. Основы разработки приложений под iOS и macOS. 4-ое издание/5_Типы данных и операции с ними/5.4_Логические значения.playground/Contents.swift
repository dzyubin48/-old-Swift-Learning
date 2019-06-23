import Cocoa

// 1. Объявите две логические переменные. Значение первой должно быть равно true, второй - false.
var first = true
var second = false

// 2. Запишите в две константы результат использования их в качесве операндов для операторов логического И и ИЛИ
let and = first && second
let or = first || second

// 3. Выведите на консоль значения обеих получившихся констант
print(and)
print(or)

// 4. Вычислите результат следующих логических выражений.
var v1 = ((true && false) || true)
var v2 = true && false && true || (true || false)
var v3 = false || (false || true) && (true && false)
