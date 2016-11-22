//
//  ViewController.swift
//  permanentStorage
//
//  Created by Doug Wells on 11/22/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userPhone: UITextField!
    
    @IBOutlet weak var savedPhone: UILabel!
    
    @IBAction func savePhoneTapped(_ sender: Any) {
        
        UserDefaults.standard.set(userPhone.text, forKey: "phone")
        userPhone.text = ""

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let phoneObj = UserDefaults.standard.object(forKey: "phone")
        if let phone = phoneObj as? String {
            print(phone)
            userPhone.text = phone
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

