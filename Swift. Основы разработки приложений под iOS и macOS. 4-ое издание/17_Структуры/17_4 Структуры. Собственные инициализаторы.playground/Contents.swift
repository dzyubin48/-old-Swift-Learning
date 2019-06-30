/// 1. Объявите перечисление Color, содержащее члены, описывающие возможные цвета шахматных фигур. Члены перечисления
/// должны иметь связанные значения

enum Color: String {
    case black = "black"
    case white = "white"
}

/// 2. Объявите перечисление ChessFigures, содержащее все возможные типы шахматных фигур. Члены перечисления должны
/// иметь связанные значения

enum ChessFigures: String {
    case pawn = "pawn"
    case rook = "rook"
    case knight = "knight"
    case bishop = "bishot"
    case queen = "queen"
    case king = "king"
}

/// 3. Объявите структуру Chessmen, описывающую шахматную фигуру. Структура должна содержать следующие свойства:
/// тип фигуры (тип ChessFigures), цвет фигуры (тип Сolor), координаты на игровой площадке (тип (String, UInt)?)

struct Chessmen {
    let chess: ChessFigures
    let color: Color
    var coordinates: (String, UInt)?

    /// 4. В структуре Chessmen создайте инициализатор, который принимает значения для свойств 'тип' и 'цвет'.
    /// Координаты по-умолчанию должны устанавливаться как nil
    init(
        chess: ChessFigures,
        color: Color,
        coordinates: (String, UInt)? = nil
        ) {
        self.chess = chess
        self.color = color
        self.coordinates = coordinates
    }
}

var a = Chessmen(chess: .bishop, color: .black)


