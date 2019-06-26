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

    init(
        uid: String = UUID().uuidString,
        title: String,
        content: String,
        color: UIColor = .white,
        importance: Importance,
        selfDestructionDate: Date? = nil
        ) {
        self.uid = uid
        self.title = title
        self.content = content
        self.color = color
        self.importance = importance
        self.selfDestructionDate = selfDestructionDate
    }
}
