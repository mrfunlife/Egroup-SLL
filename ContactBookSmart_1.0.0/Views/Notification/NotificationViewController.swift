//
//  NotificationViewController.swift
//  ContactBookSmart_1.0.0
//
//  Created by Admin on 11/24/17.
//  Copyright © 2017 FunLife. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   let cellSpacingHeight: CGFloat = 5
    
   var listNotificationSeen: [Notification] = notificationListDoneSeen
   var listNotificationNotSeen: [Notification] = notificationListNotSeen
   @IBOutlet weak var tableView: UITableView?
   @IBOutlet weak var segmentControl: UISegmentedControl!
   @IBAction func segmentedControlAction(sender: AnyObject) {
        tableView?.reloadData()
   }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.estimatedRowHeight = 400
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        var returnValue = 0
        switch segmentControl.selectedSegmentIndex {
        case 0:
            returnValue =  listNotificationNotSeen.count
        case 1:
            returnValue =  listNotificationSeen.count
        default:
            break
        }
        return returnValue
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.Notification.rawValue, for: indexPath) as? NotificationTableViewCell else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        switch segmentControl.selectedSegmentIndex {
        case 0:
            cell.notification = listNotificationNotSeen[indexPath.row]
            break
        case 1:
            cell.notification = listNotificationSeen[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
}
