//
//  RightViewController.swift
//  LGSideMenuControllerDemo
//

class RightViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
}
