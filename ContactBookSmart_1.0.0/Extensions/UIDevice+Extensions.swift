//
//  UIDevice+Extensions.swift
//  AutoLayoutStackViewByCode
//
//  Created by Admin on 11/18/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
    
    static func setSize(iphone: CGFloat, ipad: CGFloat) -> CGFloat {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            return iphone
        case .pad:
            return ipad
        default:
            return 0
        }
    }
}
