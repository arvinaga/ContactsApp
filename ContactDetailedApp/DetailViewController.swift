//
//  DetailViewController.swift
//  ContactDetailedApp
//
//  Created by Arvind Nagarajan on 12/27/16.
//  Copyright © 2016 Arvind Nagarajan. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let contact = self.contact {
            if let name = contact.name {
                self.nameLabel.text = name
            }
            if let phoneNumber = contact.phone {
                self.phoneNumberLabel.text = phoneNumber
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var contact: Contacts?
    
}
