//
//  Result.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/27/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

struct Result {
    var subjectsName: String?
    var subjectsPoint: String?
    var subjectsRank: String?
    var isHeader: Bool?
    
    init(subjectsName: String?, subjectsPoint: String?, subjectsRank: String?) {
        self.subjectsName = subjectsName
        self.subjectsPoint = subjectsPoint
        self.subjectsRank = subjectsRank
    }
    
    init(subjectsName: String?, subjectsPoint: String?, subjectsRank: String?, isHeader: Bool?) {
        self.subjectsName = subjectsName
        self.subjectsPoint = subjectsPoint
        self.subjectsRank = subjectsRank
        self.isHeader = isHeader
    }
    
}
