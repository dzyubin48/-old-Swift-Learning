extension String {
    static func random(length: Int) -> String {

        // Проверяем что length строго положительное число
        guard length > 1 else {
            return "Error"
        }

        // Создаём пустую строку для вывода, счётчик и строку с возможными элементами для новых строк
        var finalWord: String = ""
        var count = 0
        let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

        // Прибавляем строке для вывода значения = одному из элементов строки chars пока счётчик не станет = длине
        repeat {
            finalWord += String(chars.randomElement()!)
            count += 1
        } while count != length
        return finalWord
    }
}

print(String.random(length: 20))
