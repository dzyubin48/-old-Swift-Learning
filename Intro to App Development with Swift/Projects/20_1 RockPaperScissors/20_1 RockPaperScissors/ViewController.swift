//
//  ViewController.swift
//  20_1 RockPaperScissors
//
//  Created by Dzyubin Danila on 14/04/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _setAccessibilityIdentifiers()
        updateUI(gamestate: .start)
    }

    // Аутлеты всех элементов на экране
    @IBOutlet weak var botSignLabel: UILabel!
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!

    // Перезапуск игры при нажатии на Играть снова
    @IBAction func restartGame(_ sender: Any) {
        updateUI(gamestate: .start)
    }

    // Запуск игры с выбранным Камнем
    @IBAction func rockSignPressed(_ sender: Any) {
        let newState = play(playerSign: .rock)
        updateUI(gamestate: newState)
    }

    // Запуск игры с выбранными Ножницами
    @IBAction func scissorsSignPressed(_ sender: Any) {
        let newState = play(playerSign: .scissors)
        updateUI(gamestate: newState)
    }

    // Запуск игры с выбранной Бумагой
    @IBAction func paperSignPressed(_ sender: Any) {
        let newState = play(playerSign: .paper)
        updateUI(gamestate: newState)
    }

    // Обновление интерфейса при различных состояниях игры
    func updateUI(gamestate: GameState) {
        switch gamestate {
        case .start:
            gameStateLabel.text = gamestate.status
            playAgainButton.isHidden = true
            botSignLabel.text = "🤖"
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            rockButton.isEnabled = true
            scissorsButton.isEnabled = true
            paperButton.isEnabled = true
        case .win:
            gameStateLabel.text = gamestate.status
        case .lose:
            gameStateLabel.text = gamestate.status
        case .draw:
            gameStateLabel.text = gamestate.status
        }
    }

    // Сама 'Игра' и скрытие лишних кнопок на экране
    func play(playerSign: Sign) -> GameState {
        let botSign = randomSign()
        botSignLabel.text = botSign.emoji
        let state = playerSign.compareSigns(botSign: botSign)

        rockButton.isEnabled = false
        scissorsButton.isEnabled = false
        paperButton.isEnabled = false

        switch playerSign {
        case .paper:
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        case .rock:
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
        }

        playAgainButton.isHidden = false

        return state
    }

    private func _setAccessibilityIdentifiers() {
        botSignLabel.accessibilityIdentifier = "botSignLabel"
        gameStateLabel.accessibilityIdentifier = "gameStateLabel"
        rockButton.accessibilityIdentifier = "rockButton"
        scissorsButton.accessibilityIdentifier = "scissorsButton"
        paperButton.accessibilityIdentifier = "paperButton"
        playAgainButton.accessibilityIdentifier = "playAgainButton"
    }
}

