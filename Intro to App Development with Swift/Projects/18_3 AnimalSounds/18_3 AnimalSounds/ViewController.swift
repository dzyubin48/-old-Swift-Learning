//
//  ViewController.swift
//  18_3 AnimalSounds
//
//  Created by Dzyubin Danila on 10/03/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoundLabel: UILabel!
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func catButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }

    @IBAction func dogButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }

    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
}

