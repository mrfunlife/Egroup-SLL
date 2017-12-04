//
//  UITextField+Extensions.swift
//  AutoLayoutStackViewByCode
//
//  Created by Admin on 11/19/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    convenience init(placeholder: String?, fontSize: CGFloat, boderStyle: UITextBorderStyle, parentStackView: UIStackView) {
        self.init()
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = self.font?.withSize(fontSize)
        self.borderStyle = boderStyle
        parentStackView.addArrangedSubview(self)
    }
}

//
//textFieldFirst = UITextField(placeholder: "First", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), boderStyle: .roundedRect, parentStackView: stackViewTextField)
//
//
//textFieldMiddle = UITextField(placeholder: "Middle", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), boderStyle: .roundedRect, parentStackView: stackViewTextField)
//
//textFieldLast = UITextField(placeholder: "Last", fontSize: UIDevice.setSize(iphone: 15, ipad: 22), boderStyle: .roundedRect, parentStackView: stackViewTextField)

