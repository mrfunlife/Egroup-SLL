//
//  UIStackView+Extensions.swift
//  AutoLayoutStackViewByCode
//
//  Created by Admin on 11/18/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit
import Foundation

extension UIStackView {
    func changeBackGroundColor(color: UIColor) {
        let backgroundLayer  = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path  =  UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
}
