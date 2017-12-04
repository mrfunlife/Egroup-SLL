//
//  Timeline.swift
//  ContactBook_VnEduTech
//
//  Created by Admin on 11/22/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

struct Timeline {
    var date: String?
    var subjectsMorning: [String]?
    var subjectsEvening: [String]?
    
    init(date: String?, subjectsMorning: [String]?, subjectsEvening: [String]? ) {
        self.date = date
        self.subjectsMorning = subjectsMorning
        self.subjectsEvening = subjectsEvening
    }

}
