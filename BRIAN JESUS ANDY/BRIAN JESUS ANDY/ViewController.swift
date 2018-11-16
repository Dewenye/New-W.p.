//
//  ViewController.swift
//  BRIAN JESUS ANDY
//
//  Created by Admin on 11/16/18.
//  Copyright © 2018 Calendar. All rights reserved.
//

import UIKit

    var event = [String()]
    var userData = false
    
    class ViewController: UIViewController, UITableViewDelegate {
    
        @IBOutlet weak var tblCalendar: UITableView!
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return event.count
        }
    
        private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
    cell.textLabel?.text = event[indexPath.row]
    return cell
    }
    
        override func viewDidAppear(_ animated: Bool){
    tblCalendar.reloadData()
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
        userData = UserDefaults.standard.bool(forKey: "userData")
    
    if userData == true {
        UserDefaults.standard.object(forKey: "userData")
    }
    else {
    event.append("NO USER DATA")
        UserDefaults.standard.set(event, forKey: "theEvent") as! [String]
    }
    
    if event[0] == "No USER DATA" {
    event.remove(at: 0)
        UserDefaults.standard.set(event, forKey:"theEvent" )
    }
    }
        
    }
    

        // Do any additional setup after loading the view, typically from a nib.





