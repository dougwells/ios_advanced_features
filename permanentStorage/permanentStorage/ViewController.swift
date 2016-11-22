//
//  ViewController.swift
//  permanentStorage
//
//  Created by Doug Wells on 11/22/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    //Save name permantly
//        UserDefaults.standard.set("Doug", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            print(name)
        }
        
    //Save array permantly (NSArray is just a type of Array)
    //See http://bit.ly/2gGrGM2
        
//        let scores = [95, 98, 75, 83]
//        UserDefaults.standard.set(scores, forKey:"test1")
        let test1ScoresObject = UserDefaults.standard.object(forKey: "test1")
        if let test1Scores = test1ScoresObject as? NSArray {
            print(test1Scores)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

