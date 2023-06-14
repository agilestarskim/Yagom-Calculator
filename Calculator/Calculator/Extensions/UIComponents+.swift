//
//  UIComponents+.swift
//  Calculator
//
//  Created by Minsup on 2023/06/07.
//

import UIKit

extension UILabel {
    var unwrappedText: String {
        return self.text ?? ""
    }
    
    static func generate(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        
        return label
    }
}

extension UIButton {
    var unwrappedTitle: String {
        return self.titleLabel?.text ?? "error"
    }
    
    var sign: String {
        guard let text = self.titleLabel?.text, text.isOperator else { return "error"}
        return text
    }
}

extension UIStackView {
    static func generate(with views: UIView...) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 8
        
        views.forEach {
            stackView.addArrangedSubview($0)
        }
        
        return stackView
    }
}
