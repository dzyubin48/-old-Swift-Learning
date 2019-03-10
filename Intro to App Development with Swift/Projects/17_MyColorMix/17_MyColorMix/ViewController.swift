//
//  ViewController.swift
//  17_MyColorMix
//
//  Created by Dzyubin Danila on 10/03/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        updateControls()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
    }

    // Action для обновления цвета при нажатии на свитч
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
        updateColor()
    }

    // Функция для обновления цвета во View
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0

        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }

        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }

        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }

        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

    // Action для обновления значения цвета при изменении положения слайдера
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }

    // Action для сброса всех элементов на первоначальное значение
    @IBAction func reset(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false

        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1

        updateControls()
        updateColor()
    }

    // Функция для отключения слайдеров, пока не включён свитч
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
}

