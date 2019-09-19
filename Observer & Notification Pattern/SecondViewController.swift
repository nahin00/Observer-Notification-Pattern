//
//  SecondViewController.swift
//  Observer & Notification Pattern
//
//  Created by Nahin Ahmed on 19.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func oneBtnTapped(_ sender: UIButton) {
        let notificationName = Notification.Name(rawValue: oneKey)
        NotificationCenter.default.post(name: notificationName, object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func twoBtnTapped(_ sender: UIButton) {
        let notificationName = Notification.Name(rawValue: twoKey)
        NotificationCenter.default.post(name: notificationName, object: nil)
        self.dismiss(animated: true, completion: nil)
    }
}
