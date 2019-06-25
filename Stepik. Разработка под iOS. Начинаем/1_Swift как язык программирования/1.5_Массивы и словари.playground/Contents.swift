import Foundation

extension Array {

    // Меняем текущий массив
    mutating func myShuffle() {
        for _ in 0..<(self.count - 1) {
            let randomIndex1 = Int(arc4random_uniform(UInt32(self.count)))
            let randomIndex2 = Int(arc4random_uniform(UInt32(self.count)))

            // Если индексы одинаковы - просто удаляем элемент и ставим его в конец
            guard randomIndex1 != randomIndex2 else {
                let element = self[randomIndex1]
                self.remove(at: randomIndex1)
                self.append(element)
                return
            }

            // Пузырьком меняем местами элементы
            let element = self[randomIndex1]
            self[randomIndex1] = self[randomIndex2]
            self[randomIndex2] = element
        }
    }
}
