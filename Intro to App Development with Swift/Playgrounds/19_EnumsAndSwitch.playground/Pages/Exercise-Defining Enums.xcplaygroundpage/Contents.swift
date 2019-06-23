/*:
 ## Exercise: Defining Enums
 
 Get some practice defining your own enums. Remember the rules about naming enums and their cases. 
 
 - callout(Exercise): Define an enum for the compass directions: North, East, South, and West.
*/
enum Direction {
    case North
    case East
    case South
    case West
}
//: - callout(Exercise): Define an enum for jigsaw puzzle pieces: corner, edge, and middle.
enum PuzzleType {
    case corner
    case edge
    case middle
}
//: - callout(Excercise): Define an enum for the playback modes in a music app: standard, repeat, repeat all, and shuffle.
enum MusicMode {
    case standard, repeatt, repeatAll, shuffle
}
//: [Previous](@previous)  |  page 17 of 21  |  [Next: Exercise: Counting Chickens](@next)
