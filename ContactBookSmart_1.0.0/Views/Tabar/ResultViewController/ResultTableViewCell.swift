//
//  ResultTableViewCell.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/27/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblSubjectsName: UILabel?
    @IBOutlet weak var lblSubjectsPoint: UILabel?
    @IBOutlet weak var lblSubjectRank: UILabel?
    
    var result: Result! {
        didSet {
            if result.isHeader != nil && result.isHeader! {
                lblSubjectRank?.font = UIFont.boldSystemFont(ofSize: 13.0)
                lblSubjectsName?.font = UIFont.boldSystemFont(ofSize: 13.0)
                lblSubjectsPoint?.font = UIFont.boldSystemFont(ofSize: 13.0)
            }
            lblSubjectsName?.text = result.subjectsName
            lblSubjectsPoint?.text =  result.subjectsPoint
            lblSubjectRank?.text = result.subjectsRank
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
