//
//  File.swift
//  20_1 RockPaperScissorsUITests
//
//  Created by Dzyubin Danila on 27/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import XCTest

class UITests: BaseTestCase {

    func testAllElements() {
        let helpers = Helpers(app)

        XCTAssertTrue(helpers.botSignLabel.exists, "Отсутствует лейбл 'Робот'")
        XCTAssertTrue(helpers.gameStateLabel.exists, "Отсутствует надпись 'Камень, Ножницы, Бумага?'")
        XCTAssertTrue(helpers.paperButton.exists, "Отсутствует кнопка 'Бумага'")
        XCTAssertTrue(helpers.rockButton.exists, "Отсутствует кнопка 'Камень'")
        XCTAssertTrue(helpers.scissorsButton.exists, "Отсутствует кнопка 'Ножницы'")
        XCTAssertFalse(helpers.playAgainButton.exists, "Присутствует кнопка 'Играть снова'")
    }

    func testRockPlay() {
        let helpers = Helpers(app)

        helpers.tapRock()
        XCTAssertTrue(helpers.rockButton.exists, "Отсутствует кнопка 'Камень'")
        XCTAssertFalse(helpers.paperButton.exists, "Присутствует кнопка 'Бумага'")
        XCTAssertFalse(helpers.scissorsButton.exists, "Присутствует кнопка 'Ножницы'")
        XCTAssertTrue(helpers.playAgainButton.exists, "Отсутствует кнопка 'Играть снова'")
    }

    func testPaperPlay() {
        let helpers = Helpers(app)

        helpers.tapPaper()
        XCTAssertFalse(helpers.rockButton.exists, "Присутствует кнопка 'Камень'")
        XCTAssertTrue(helpers.paperButton.exists, "Отсутствует кнопка 'Бумага'")
        XCTAssertFalse(helpers.scissorsButton.exists, "Присутствует кнопка 'Ножницы'")
        XCTAssertTrue(helpers.playAgainButton.exists, "Отсутствует кнопка 'Играть снова'")
    }

    func testScissorsPlay() {
        let helpers = Helpers(app)

        helpers.tapScissors()
        XCTAssertFalse(helpers.rockButton.exists, "Присутствует кнопка 'Камень'")
        XCTAssertFalse(helpers.paperButton.exists, "Присутствует кнопка 'Бумага'")
        XCTAssertTrue(helpers.scissorsButton.exists, "Отсутствует кнопка 'Ножницы'")
        XCTAssertTrue(helpers.playAgainButton.exists, "Отсутствует кнопка 'Играть снова'")
    }

    func testPlayAgain() {
        let helpers = Helpers(app)

        helpers.tapRock()
        helpers.tapPlayAgain()
        XCTAssertFalse(helpers.playAgainButton.exists, "Присутствует кнопка 'Играть снова'")

        helpers.tapPaper()
        helpers.tapPlayAgain()
        XCTAssertFalse(helpers.playAgainButton.exists, "Присутствует кнопка 'Играть снова'")

        helpers.tapScissors()
        helpers.tapPlayAgain()
        XCTAssertFalse(helpers.playAgainButton.exists, "Присутствует кнопка 'Играть снова'")
    }
}
