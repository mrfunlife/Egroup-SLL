//
//  TabBarController.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/23/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    

    @IBAction func gotoNotification(){
        let viewController:NotificationViewController = UIStoryboard(name: NameStoryBoard.Notification.rawValue, bundle: nil).instantiateViewController(withIdentifier: StoryBoardIdentifier.Notification.rawValue) as! NotificationViewController
       viewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
       self.present(viewController, animated: true, completion: nil)
    }
    

    @IBAction func unwindToMainViewController(for unwindSegue: UIStoryboardSegue) {
        if unwindSegue.identifier == Unwind.NotificationBackToBaseView.rawValue {
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func setTitle(title: String?){
        self.title = title
    }
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            setTitle(title: "Home")
        case 1:
            setTitle(title: "TimeLine")
        case 2:
            setTitle(title: "Result")
        case 3:
            setTitle(title: "Message")
        case 4:
            setTitle(title: "Photo Libary")
        default:
            setTitle(title: "Home")
        }
    }
}
