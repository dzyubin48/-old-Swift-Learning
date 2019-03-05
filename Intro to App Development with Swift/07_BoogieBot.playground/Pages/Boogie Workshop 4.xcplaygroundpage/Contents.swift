/*:
 ## Boogie Workshop
 
 This page is here for you to create your own routines.
 
 Remember the moves:
 
 - `leftArmUp()`, `leftArmDown()`, `rightArmUp()`, `rightArmDown()`
 - `leftLegUp()`, `leftLegDown()`, `rightLegUp()`, `rightLegDown()`
 - `shakeItLeft()`, `shakeItRight()`, `shakeItCenter()`
 - `jumpUp()`, `jumpDown()`
 - `fabulize()`, `defabulize()`
 
 To sign your work:
 
 `setBotTitle("My Awesome Dance")`\
 `setBotSubtitle("By The Boogiemaster")`
 */
// My code
func leftArmMoves() {
    leftArmUp()
    leftArmDown()
}

func rightArmMoves() {
    rightArmUp()
    rightArmDown()
}

func leftLegMoves() {
    leftLegUp()
    leftLegDown()
}

func rightLegMoves() {
    rightLegUp()
    rightLegDown()
}

func shakeFromLeftMove() {
    shakeItLeft()
    shakeItRight()
    shakeItCenter()
}

func shakeFromRightMove() {
    shakeItRight()
    shakeItLeft()
    shakeItCenter()
}
func defabulizeJump() {
    jumpUp()
    defabulize()
    jumpDown()
}

func leftDance() {
    leftArmMoves()
    shakeFromLeftMove()
    leftLegMoves()
}

func rightDance() {
    rightLegMoves()
    shakeFromRightMove()
    rightArmMoves()
}


startBot()
startRecording()

setBotTitle("My functional dance")
setBotSubtitle("By Daniel Dzyubin")

fabulize()
leftDance()
rightDance()
defabulizeJump()








/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 13 of 13
