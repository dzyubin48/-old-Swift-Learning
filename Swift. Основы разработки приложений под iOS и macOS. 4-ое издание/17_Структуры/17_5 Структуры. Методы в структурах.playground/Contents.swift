/// Код из предыдущего задания
enum Color: String {
    case black = "black"
    case white = "white"
}

enum ChessFigures: String {
    case pawn = "pawn"
    case rook = "rook"
    case knight = "knight"
    case bishop = "bishot"
    case queen = "queen"
    case king = "king"
}

struct Chessmen {
    let chess: ChessFigures
    let color: Color
    var coordinates: (Character, UInt)?

    init(
        chess: ChessFigures,
        color: Color,
        coordinates: (Character, UInt)? = nil
        ) {
        self.chess = chess
        self.color = color
        self.coordinates = coordinates
    }

    /// 1. В структуру Chessmen добавьте метод setCoordinates(char:num:), позволяющий установить новые координаты фигуры
    mutating func setCoordinates(char: Character, num: UInt) {
        self.coordinates = (char, num)
    }

    /// 2. В структуру Chessmen добавьте медот kill(), позволяющий убрать фигуру с игровой площадки (coords = nil)
    mutating func kill() {
        self.coordinates = nil
    }
}

/// 3. Создайте фигуру "Белый слон". Установите её координаты как A1, после чего уберите фигуру с игровой площадки
var whiteBishop = Chessmen(chess: .bishop, color: .white)
whiteBishop.setCoordinates(char: "А", num: 1)
print(whiteBishop.coordinates as Any)
whiteBishop.kill()
print(whiteBishop.coordinates as Any)


