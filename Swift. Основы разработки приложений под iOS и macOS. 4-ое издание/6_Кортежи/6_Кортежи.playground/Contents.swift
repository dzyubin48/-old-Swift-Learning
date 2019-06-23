import Cocoa

// 1. Создайте кортеж с тремя параметрами: Ваш любимый фильм, Ваше любимое число и Ваше любимое блюдо
var myFavorite = ("Avengers", 42, "Pizza")

// 2. Одним выражением запишите каждый элемент кортежа в три константы
let (myFavoriteMovie, myFavoriteNumber, myFavoriteFood) = myFavorite

// 3. Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями)
var wifeFavorite = ("Spider-man", 27, "Borsh")

// 4. Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа)
var empty: (String, Int, String) = ("", 0, "")
empty = myFavorite
myFavorite = wifeFavorite
wifeFavorite = empty

// 5. Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго
// кортежа, и разница любимых чисел первого и второго кортежей
var numCorteg = (myFavorite.1, wifeFavorite.1, myFavorite.1 - wifeFavorite.1)
