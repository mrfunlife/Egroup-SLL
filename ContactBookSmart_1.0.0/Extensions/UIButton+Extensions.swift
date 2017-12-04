//
//  UIButton+Extensions.swift
//  AutoLayoutStackViewByCode
//
//  Created by Admin on 11/19/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(backGroundColor: UIColor,title: String?,titleColor: UIColor, parentStackView: UIStackView ) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        parentStackView.addArrangedSubview(self)
    }
//
//    @IBInspectable var borderColor:UIColor? {
//        set {
//            layer.borderColor = newValue!.cgColor
//        }
//        get {
//            if let color = layer.borderColor {
//                return UIColor(cgColor:color)
//            }
//            else {
//                return nil
//            }
//        }
//    }
//    @IBInspectable var borderWidth:CGFloat {
//        set {
//            layer.borderWidth = newValue
//        }
//        get {
//            return layer.borderWidth
//        }
//    }
//    @IBInspectable var cornerRadius:CGFloat {
//        set {
//            layer.cornerRadius = newValue
//            clipsToBounds = newValue > 0
//        }
//        get {
//            return layer.cornerRadius
//        }
//    }
    
}

