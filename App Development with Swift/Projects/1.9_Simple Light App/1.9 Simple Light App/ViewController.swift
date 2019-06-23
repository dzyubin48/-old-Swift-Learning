//
//  ViewController.swift
//  1.9 Simple Light App
//
//  Created by Dzyubin Danila on 06/05/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }

    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}
