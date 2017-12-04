//
//  UILabel+Extensions.swift
//  AutoLayoutStackViewByCode
//
//  Created by Admin on 11/18/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String?, fontSize: CGFloat, parentStackView: UIStackView) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = self.font?.withSize(fontSize)
        parentStackView.addArrangedSubview(self)
    }
}


//lableFirst = UILabel(text: "First", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), parentStackView: stackViewLable)
//
//lableMiddle = UILabel(text: "Middle", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), parentStackView: stackViewLable)
//
//lableLast = UILabel(text: "Last", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), parentStackView: stackViewLable)

