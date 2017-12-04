//
//  HandlerViewHelper.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/25/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

class HandlerViewHelper {
    
    static func addLeftIconTextField(icon : String!, textField : UITextField) {
        let btnIcon = UIButton(type: .custom)
        btnIcon.setImage(UIImage.init(named: icon), for: .normal)
        btnIcon.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        btnIcon.contentHorizontalAlignment = .left
        textField.leftView = btnIcon
        textField.leftViewMode = .always
    }
    
    static func addRightIconTextField(icon : String!, textField : UITextField) {
        let btnIcon = UIButton(type: .custom)
        btnIcon.setImage(UIImage.init(named: icon), for: .normal)
        btnIcon.frame = CGRect(x: 10, y: 0, width: 30, height: 30)
        btnIcon.contentHorizontalAlignment = .right
        textField.rightView = btnIcon
        textField.rightViewMode = .always
        
    }
}
