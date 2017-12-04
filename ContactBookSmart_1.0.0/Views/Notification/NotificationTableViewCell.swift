//
//  NotificationTableViewCell.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/24/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblDescriptions: UILabel?

    @IBOutlet weak var imgNotify: UIImageView!
//    var checkImage: Bool = true
    
    var notification: Notification! {
        didSet {
            lblDescriptions?.text = notification.descriptions
//            if checkImage {
//                self.imgNotify.layer.borderColor = UIColor.lightGray.cgColor
//                self.imgNotify.layer.borderWidth = 1.0
//                self.imgNotify.layer.cornerRadius = 8.0
//                self.imgNotify.layer.masksToBounds = true
//                checkImage = false
//            }
        }
    }
    
    override func layoutSubviews() {
        self.imgNotify.layer.borderColor = UIColor.lightGray.cgColor
        self.imgNotify.layer.borderWidth = 1.0
        self.imgNotify.layer.cornerRadius = 8.0
        self.imgNotify.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
