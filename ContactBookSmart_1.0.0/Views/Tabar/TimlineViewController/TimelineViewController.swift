//
//  TimelineViewController.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/23/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class TimelineViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    var fakeTimelines: [Timeline] = timeLines
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear TimelineViewController")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWillDisAppear TimelineViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisAppear TimelineViewController")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return fakeTimelines.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdTimeLine", for: indexPath) as? TimeLineTableViewCell else {
            return UITableViewCell()
        }
            cell.selectionStyle = .none
            cell.timeLine = fakeTimelines[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 110
    }
}
