//
//  BaseViewController.swift
//  ContactBook_VnEduTech
//
//  Created by Admin on 11/21/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {


    var activityindicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityindicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityindicatorView.color = UIColor.white
        self.view.addSubview(activityindicatorView)
        activityindicatorView.frame = self.view.frame
        activityindicatorView.center = self.view.center
        
        print("ViewDidLoad BaseViewController")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear BaseViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
         print("ViewDidAppear BaseViewController")
    }
    

    override func viewWillDisappear(_ animated: Bool) {
         print("ViewWillDisAppear BaseViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisAppear BaseViewController")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
   func showIndicatorView(){
        DispatchQueue.main.async {
            self.activityindicatorView.startAnimating()
        }
    }
    
    func stopIndicatorView(){
        DispatchQueue.main.async {
            self.activityindicatorView.stopAnimating()
        }
    }
    
//    func setNavigationBar() {
//        let screenSize: CGRect = UIScreen.main.bounds
//        navBar = UINavigationBar(frame: CGRect(x: 0, y: 25, width: screenSize.width, height: 43))
//
//        let notifiItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icon-notification"), style: .done, target: nil, action: #selector(notification))
//        notifiItem.tintColor = .red
//
//        let settingItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icon-settings"), style: .done, target: nil, action: #selector(settings))
//        settingItem.tintColor = .red
//
//        navItem.rightBarButtonItem = notifiItem
//        navItem.leftBarButtonItem = settingItem
//        navBar?.setItems([navItem], animated: false)
//        navBar?.barTintColor = .white
//
//        self.view.addSubview(navBar!)
//    }
//
//    @objc func settings() {
//        print("Settings ----- ")
//    }
//
//    @objc func notification() {
//        let viewController:NotificationViewController = UIStoryboard(name: "NotificationStoryboard", bundle: nil).instantiateViewController(withIdentifier: StoryBoardIdentifier.Notification.rawValue) as! NotificationViewController
//        viewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//        self.present(viewController, animated: true, completion: nil)
//    }
//    
//    func setTitleNavBar(title: String) {
//        print(title)
//        navItem.title = title
//    }
}
