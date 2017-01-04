//
//  ViewController.swift
//  spinnersAlerts
//
//  Created by Doug Wells on 1/4/17.
//  Copyright © 2017 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func createAlert(_ sender: Any) {
        
        // Structure of an alert line1: Title, line2: Message, line3: Button w/button title
        
        // Creates an alert (but does not display it)
        let alertController = UIAlertController(title: "This is our alert", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
        
        // Modify Alert's button & what happens when alert button is pressed
        // Can have multiple buttons/actions at bottom of alert (ie "OK" & "Cancel")
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default , handler: { (action) in
            
            print("OK Pressed")
            self.dismiss(animated: true, completion: nil)
                }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .default , handler: { (action) in
            
            print("Cancel Pressed")
            self.dismiss(animated: true, completion: nil)
        }))
        
        //Present Alert
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pauseApp(_ sender: Any) {
    }
    
    @IBAction func resumeApp(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

