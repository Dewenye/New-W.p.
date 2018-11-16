//
//  addEvent.swfit.swift
//  BRIAN JESUS ANDY
//
//  Created by Admin on 11/16/18.
//  Copyright © 2018 Calendar. All rights reserved.
//
import UIKit
import Foundation
class addEvent: UIViewController {
    
    
        
    @IBOutlet weak var txtEvent: UITextField!
    
    
    @IBAction func btnAddAction(_ sender: Any) {
        
        userData = true
        UserDefaults.standard.set(userData, forKey: "userData")
        
        if txtEvent.text == "" {
            txtEvent.backgroundColor = UIColor.red
        }
        else {
            txtEvent.backgroundColor = UIColor.white
            event.append(txtEvent.text!)
            UserDefaults.standard.set(event,  forKey: "theEvent")
        }
    }
    
    @IBAction func btnDoneAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
        
    }
    }
    
    
        
    
    

