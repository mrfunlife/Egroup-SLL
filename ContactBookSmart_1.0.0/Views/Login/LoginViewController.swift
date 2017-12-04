//
//  LoginViewController.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/23/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func btnLogin(){
//        let viewController:TabBarController = UIStoryboard(name: "TabbarStoryboard", bundle: nil).instantiateViewController(withIdentifier: "TabbarViewControler") as! TabBarController
//        viewController.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
//        self.present(viewController, animated: true, completion: nil)
        gotoTabbar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func gotoTabbar() {
        let storyboard = UIStoryboard(name: NameStoryBoard.Main.rawValue, bundle: nil)
        let navigationController = storyboard.instantiateViewController(withIdentifier: StoryBoardIdentifier.Navigation.rawValue) as! UINavigationController
        
        navigationController.setViewControllers([storyboard.instantiateViewController(withIdentifier: StoryBoardIdentifier.Tabbar.rawValue)], animated: true)
        
//       let viewController:TabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! TabBarController
//       viewController.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
//        navigationController.setViewControllers([viewController], animated: true)
        
        let mainViewController = storyboard.instantiateInitialViewController() as! MainViewController
        mainViewController.rootViewController = navigationController
        mainViewController.setup(type: 0)
        
        
        let window = UIApplication.shared.delegate!.window!!
        window.rootViewController = mainViewController
        
        UIView.transition(with: window, duration: 0.6, options: [.transitionFlipFromLeft], animations: nil, completion: nil)
    }
}
