//
//  TimeLineTableViewCell.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/23/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {
    @IBOutlet weak var lblDate: UILabel?
    @IBOutlet weak var stackViewSubjects: UIStackView?
    var checkAddMatrixView = true
    
    var labelsMatrixView: NALLabelsMatrixView!
    var widthColums: Int {
        return (Int)((UIScreen.main.bounds.width - 13) / 5)
    }
    
    var timeLine: Timeline! {
        didSet {
            lblDate?.text = timeLine.date ?? ""
            addlabelsMatrixView(subjectsMorning: timeLine.subjectsMorning, subjectEvening: timeLine.subjectsEvening)
        }
    }

    func addlabelsMatrixView(subjectsMorning: [String]?,subjectEvening: [String]? ){
        self.labelsMatrixView = NALLabelsMatrixView(frame: CGRect.init(x: -10, y: 25, width: UIScreen.main.bounds.width, height: 130), columns: [widthColums,widthColums ,widthColums,widthColums,widthColums])
        
        labelsMatrixView.addRecord(record: subjectsMorning!,colorText: UIColor.red,indexColor: 3)
        labelsMatrixView.addRecord(record: subjectEvening!,colorText: UIColor.red,indexColor: 2)
        if checkAddMatrixView {
            self.stackViewSubjects?.addSubview(self.labelsMatrixView)
            checkAddMatrixView = false
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
