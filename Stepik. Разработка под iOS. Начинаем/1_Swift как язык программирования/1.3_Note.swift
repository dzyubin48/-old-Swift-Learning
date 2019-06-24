import Foundation
import UIKit

struct Note {
    let uid: String
    let title: String
    let content: String
    let color: UIColor
    let importance: Importance
    let selfDestructionDate: Date?

    enum Importance {
        case unimportant
        case normal
        case important
    }

    init(uid: String = UUID().uuidString, color: UIColor = .white) {
        self.uid = uid
        self.color = color
    }
}
