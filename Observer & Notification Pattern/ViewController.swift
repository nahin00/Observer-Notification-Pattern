//
//  ViewController.swift
//  Observer & Notification Pattern
//
//  Created by Nahin Ahmed on 19.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import UIKit

let oneKey = "one"
let twoKey = "two"

class ViewController: UIViewController {

    @IBOutlet weak var numLbl: UILabel!
    
    let one = Notification.Name(rawValue: oneKey)
    let two = Notification.Name(rawValue: twoKey)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObserver()
    }
    
    func createObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateLblOne), name: one, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateLblTwo), name: two, object: nil)
    }
    
    @objc func updateLblOne(notification: NSNotification){
        numLbl.text = "You selected: 1"
    }
    
    @objc func updateLblTwo(notification: NSNotification){
        numLbl.text = "You selected: 2"
    }

    @IBAction func clickBtnTapped(_ sender: UIButton) {
        let dc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.present(dc, animated: true, completion: nil)
    }
}

