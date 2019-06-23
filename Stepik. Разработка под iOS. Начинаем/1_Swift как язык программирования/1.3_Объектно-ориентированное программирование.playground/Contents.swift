import Cocoa

// Класс машины
class Car {
    let enginePower: Int
    let mark: String
    var owner: String
    var mileage: Int

    // Инициализация класса
    init(enginePower: Int, mark: String, owner: String, mileage: Int = 0) {
        self.enginePower = enginePower
        self.mark = mark
        self.owner = owner
        self.mileage = mileage
    }

    // Поездка машины в определённом направлении на N миль
    func execute(to Go: Go) {
        guard Go.miles > 0 else {
            return print("Car can't do that =(")
        }
        print("Car ride to \(Go.side) for \(Go.miles) miles")
    }
}

// Стуктура для выбора направления и миль куда поедет машина
struct Go {
    let side: side
    let miles: Int
}

// Enum для сторон куда может поехать машина
enum side {
    case up
    case down
    case left
    case right
}

let car: Car = Car(enginePower: 150, mark: "Opel", owner: "Melman", mileage: 150)
car.execute(to: Go(side: .left, miles: 5))
