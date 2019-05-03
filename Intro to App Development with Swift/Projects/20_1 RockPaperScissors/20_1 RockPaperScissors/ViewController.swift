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
    }

    @IBOutlet weak var botSignLabel: UILabel!
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!

    @IBAction func playerSelectSign(_ sender: Any) {
    }
    @IBAction func restartGame(_ sender: Any) {
        updateUI(gamestate: .start)
    }

    func updateUI(gamestate: GameState) {
        switch gamestate {
        case .start:
            gameStateLabel.value(forKey: "Камень, Ножницы, Бумага?")
            playAgainButton.isHidden = true
        case .win:
            gameStateLabel.value(forKey: "Вы победили! =)")
        case .lose:
            gameStateLabel.value(forKey: "Вы проиграли! =(")
        case .draw:
            gameStateLabel.value(forKey: "Ничья! =/")
        }
    }
}

