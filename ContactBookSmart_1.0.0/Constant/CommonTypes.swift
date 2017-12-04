//
//  CommonTypes.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/24/17./Users/admin/Desktop/VNEdutech/ContactBookSmart_1.0.0/ContactBookSmart_1.0.0/Constant/CommonTypes.swift
//  Copyright © 2017 FunLife. All rights reserved.
//

import Foundation

enum CellIdentifier: String {
    case Notification = "cellIdNotification"
    case TimeLine = "cellIdTimeLine"
    case Result = "cellIdResult"
}


enum StoryBoardIdentifier: String {
    case Notification = "NotificationStoryBoard"
    case Tabbar = "TabbarViewControler"
    case Navigation = "NavigationController"
}


enum NameStoryBoard: String {
    case Main = "Main"
    case Notification = "NotificationStoryboard"
}

enum Unwind: String {
    case NotificationBackToBaseView = "NotificationBackToBaseView"
}
