//
//  Notification.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/24/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

struct Notification {
    var imgUrl: String?
    var descriptions: String?
    
    init(imgUrl: String?, descriptions: String?) {
        self.imgUrl = imgUrl
        self.descriptions = descriptions
    }
}
