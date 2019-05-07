/*:
 ## Exercise - Return Values and Tuples
 
 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeeting(name: String) -> String {
    return "Hi, \(name)! How are you?"
}

print(greeeting(name: "Daniel"))
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func multiplyPlusTwo(firstArgument: Int, secondArgument: Int) -> Int {
    return firstArgument * secondArgument + 2
}
print(multiplyPlusTwo(firstArgument: 2, secondArgument: 5))
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
