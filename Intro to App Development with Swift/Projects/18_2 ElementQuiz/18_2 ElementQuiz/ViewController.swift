//
//  ViewController.swift
//  18_2 ElementQuiz
//
//  Created by Dzyubin Danila on 10/03/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    // Action для перехода к следующему элементу массива
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex += 1

        // Чтобы не крашнулось при обращении к несуществующему элементу
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }

    // Action для смены лейбла на правильный ответ
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }

    // Функция для обновления картинки элемента
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

