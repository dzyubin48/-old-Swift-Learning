import Cocoa

// 1. Создайте псевдоним типа String с именем Text
typealias Text = String

// 2. Объявите три константы типа Text. Значения двух констант должны состоять из цифр, третьей из цифр и букв
let first: Text = "48"
let second: Text = "15"
let third: Text = "16текст"

// 3. Из всех констант найдите те, которые состоят только из цифр и выведите их на консоль.
// Для преобразования строки в число используйте функцию Int(_:)
if Int(first) != nil {
    print(first)
}

if Int(second) != nil {
    print(second)
}

if Int(third) != nil {
    print(third)
}

// 4. Создайте псевдоним типа (numberOne: Text?, numberTwo: Text?)? с именем TupleType. Данный тип является
// опциональным и также содержит в себе опциональные значения
typealias TupleType = (numberOne: Text?, numberTwo: Text?)?

// 5. Создайте три переменных типа TupleType, содержащие в себе следующие значения:
// ("190", "67"), ("100", "nil"), ("-65", "70")
var firstNew: TupleType = ("190", "67")
var secondNew: TupleType = ("100", nil)
var thirdNew: TupleType = ("-65", "70")

// 6. Выведитие значения элементов тех кортежей, в которых ни один из элементов не инициализирован как nil
if firstNew?.0 != nil && firstNew?.1 != nil {
    print(firstNew!)
}

if secondNew?.0 != nil && secondNew?.1 != nil {
    print(secondNew!)
}

if thirdNew?.0 != nil && thirdNew?.1 != nil {
    print(thirdNew!)
}
