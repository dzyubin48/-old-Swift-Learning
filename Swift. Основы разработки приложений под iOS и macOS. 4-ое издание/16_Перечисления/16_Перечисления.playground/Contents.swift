/// Задание №1
/// 1. Создайте перечисление с именем Chessmen, членами которого являются шахматные фигура. Имена членов перечисления
/// должны соответствовать названиям шахматных фигур на английском языка.

enum Chessmen1 {
    case pawn
    case rook
    case knight
    case bishop
    case queen
    case king
}

/// 2. Объявите переменную и проинициализируйте ей значение одного из членов созданного ранее перечисления
var bishot = Chessmen1.bishop

/// Задание №2
/// 1. Создайте перечисление Color, содержащее два возможных цвета шахматных фигур - белый и черный

enum Color {
    case white
    case black
}

/// 2. Для каждого члена перечисления Chessmen определите ассоциированные параметры: название на русском и цвет.
/// Значение параметра 'цвет' должно использовать тип Color

enum Chessmen2 {
    case pawn(name: String, color: Color)
    case rook(name: String, color: Color)
    case knight(name: String, color: Color)
    case bishop(name: String, color: Color)
    case queen(name: String, color: Color)
    case king(name: String, color: Color)
}

/// 3. Объявите константу, содержащую в качестве значения член перечисления Chessmen
let rook = Chessmen2.rook(name: "Ладья", color: .black)

/// Задание №3
/// Перенесите перечисление Color в Chessmen

enum Chessmen3 {
    case pawn(name: String, color: Color)
    case rook(name: String, color: Color)
    case knight(name: String, color: Color)
    case bishop(name: String, color: Color)
    case queen(name: String, color: Color)
    case king(name: String, color: Color)

    enum Color {
        case white
        case black
    }
}

/// Задание №4
/// 1. Для перечисления Color укажите связные значения, определяющие цвет на русском языке

enum Chessmen4 {
    case pawn(name: String, color: Color)
    case rook(name: String, color: Color)
    case knight(name: String, color: Color)
    case bishop(name: String, color: Color)
    case queen(name: String, color: Color)
    case king(name: String, color: Color)

    enum Color: String {
        case white = "Белая/Белый"
        case black = "Чёрная/Чёрный"
    }
}

/// 2. Определите переменную, содержащую произвольный член перечисления Chessmen
var knight = Chessmen4.knight(name: "Конь", color: .white)
var knightColor = Chessmen4.Color.white.rawValue
