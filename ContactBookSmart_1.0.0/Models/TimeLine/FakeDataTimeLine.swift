//
//  FakeDataTimeLine.swift
//  ContactBook_VnEduTech
//
//  Created by Admin on 11/22/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

var listSubjectsMorning: [String] = ["Toán","Toán","Ngữ Văn", "Sinh Học", "Tiếng Anh"]
var listSubjectsEvening: [String] = ["Tiếng Anh", "Địa Lý", "Lịch Sử", "Thể Chất", "Hoá Học"]

var timeLines = [
    Timeline(date: "Thứ Hai", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening),
    Timeline(date: "Thứ Ba", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening),
    Timeline(date: "Thứ Tư", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening),
    Timeline(date: "Thứ Năm", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening),
    Timeline(date: "Thứ Sáu", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening),
    Timeline(date: "Thứ Bảy", subjectsMorning: listSubjectsMorning, subjectsEvening: listSubjectsEvening)
]
