//
//  MyMultiLabelAxisValue.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/28/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation
import SwiftCharts

class MyMultiLabelAxisValue: ChartAxisValue {
    
    fileprivate let myVal: Int
    fileprivate let derivedVal: Double
    fileprivate let title: String
    
    init(myVal: Int, title: String) {
        self.myVal = myVal
        self.derivedVal = Double(myVal) / 5.0
        self.title = title
        super.init(scalar: Double(myVal))
    }
    
    override var labels:[ChartAxisLabel] {
        return [
            ChartAxisLabel(text: "\(myVal)", settings: ChartLabelSettings(font: UIFont.systemFont(ofSize: 14), fontColor: UIColor.black)),
            ChartAxisLabel(text: "\(title)", settings: ChartLabelSettings(font: UIFont.systemFont(ofSize: 11), fontColor: UIColor.blue)),
            
        ]
    }
}
