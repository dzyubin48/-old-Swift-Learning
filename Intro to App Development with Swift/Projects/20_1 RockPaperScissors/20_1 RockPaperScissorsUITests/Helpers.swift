//
//  Helpers.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

class Helpers: BaseHelper {

    var botSignLabel: XCUIElement {
        return app.staticTexts["botSignLabel"]
    }
    var gameStateLabel: XCUIElement {
        return app.staticTexts["gameStateLabel"]
    }

    var rockButton: XCUIElement {
        return app.buttons["rockButton"]
    }

    var scissorsButton: XCUIElement {
        return app.buttons["scissorsButton"]
    }

    var paperButton: XCUIElement {
        return app.buttons["paperButton"]
    }

    var playAgainButton: XCUIElement {
        return app.buttons["playAgainButton"]
    }

    func tapRock() {
        rockButton.tap()
    }

    func tapPaper() {
        paperButton.tap()
    }

    func tapScissors() {
        scissorsButton.tap()
    }

    func tapPlayAgain() {
        playAgainButton.tap()
    }
}
