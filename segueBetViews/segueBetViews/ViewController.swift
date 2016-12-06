//
//  ViewController.swift
//  segueBetViews
//
//  Created by Doug Wells on 12/6/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

let globalVariable = "Doug"

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("VC1: ", globalVariable)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toSecondViewController" {
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.username = "linda"
        }
    }



}

