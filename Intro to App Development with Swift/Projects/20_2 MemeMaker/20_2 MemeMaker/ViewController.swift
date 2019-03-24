//
//  ViewController.swift
//  20_2 MemeMaker
//
//  Created by Dzyubin Danila on 24/03/2019.
//  Copyright © 2019 Dzyubin Danila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Очищаем верхний Segment Control и заполняем его массивом из emoji
        topCaptionSegmentControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count , animated: false)
        }
        topCaptionSegmentControl.selectedSegmentIndex = 0

        // Очищаем нижний Segment Control и заполняем его массивом из emoji
        bottomCaptionSegmentControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count , animated: false)
        }
        bottomCaptionSegmentControl.selectedSegmentIndex = 0

        updateLabels()
    }

    // Действие при изменении в segment controll
    @IBAction private func segmentControllChange(_ sender: Any) {
        updateLabels()
    }

    // Массив верхнего segment control'а
    private let topChoices = [CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
                      CaptionOption(emoji: "💥", caption: "You know what makes me mad?"),
                      CaptionOption(emoji: "💕", caption: "You know what i love?")]

    // Массив нижнего segment control'а
    private let bottomChoices = [CaptionOption(emoji: "🐱", caption: "Cats wearing hats"),
                         CaptionOption(emoji: "🐕", caption: "Dogs carrying logs"),
                         CaptionOption(emoji: "🐒", caption: "Monkeys being funky")]

    // Функция для смены текста обоих лэйблов
    func updateLabels() {
        let topSelectedIndex = topCaptionSegmentControl.selectedSegmentIndex
        let bottomSelectedIndex = bottomCaptionSegmentControl.selectedSegmentIndex

        topCaptionLabel.text = topChoices[topSelectedIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomSelectedIndex].caption
    }
}
