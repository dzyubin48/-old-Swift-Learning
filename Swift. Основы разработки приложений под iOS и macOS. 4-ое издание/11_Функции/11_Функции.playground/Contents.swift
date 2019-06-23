// Задание №1
// Вернёмся к заданию 2 из предыдущей главы. Объедините написанный код анализа коллекции шахмат, хранящейся в
// переменной Chessman, в функцию chessAnalizer(figures: Chessman). В качестве входного параметра функция должна
// принимать словарь того же типа, что и переменная Chessman
typealias Chessman = [String: (alpha: Character, num: Int)?]
var Chessmans: Chessman = ["Белая пешка": (("e"), 2),
                           "Чёрная ладья": (("d"), 8),
                           "Белая королева": nil,]

func chessAnalizer(figures: Chessman) {
    for chess in figures {
        if chess.1 != nil {
            let place: String = "\(chess.1!.0)\(chess.1!.1)"
            print("Фигура \(chess.0), находится на клетке \(place)")
        } else {
            print("Фигура \(chess.0) - мертва")
        }
    }
}
chessAnalizer(figures: Chessmans)

// Задание №2
// Создайте функцию, которая предназначена для изменения состава и характеристик фигур в переменной Chessmans.
// В качестве входных параметров она должна принимать саму переменную Chessmans (как сквозной параметр),
// в которую будут вносится изменения, имя фигуры (значение типа String) и опциональный кортеж координат фигуры
// (значение типа (Character, Int)?).
// При этом, должна проводиться проверка факта существования фигуры в словаре. Если фигура не существует, то
// Информация о дей добавляется, в противном случае информация обновляется в соответствии с переданной информацией
func chessUpdate(figures: inout Chessman, name: String, coordinates: (Character, Int)?) {
        if figures[name] != nil {
            figures.updateValue(coordinates, forKey: name)
        } else {
            figures[name] = coordinates
        }
}
chessUpdate(figures: &Chessmans, name: "Ладья", coordinates: ("c", 5))
chessUpdate(figures: &Chessmans, name: "Белая пешка", coordinates: ("d", 5))
