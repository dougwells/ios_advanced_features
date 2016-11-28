//
//  ViewController.swift
//  Animations
//
//  Created by Doug Wells on 11/28/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    var count = 1
    
    @IBAction func nextTapped(_ sender: Any) {
        if count > 5 {count = 0 }
        let imageName = "frame_" + String(count) + "_delay-0.1s.gif"
        image.image = UIImage(named: imageName)
        count = count + 1
        
/*
        for num in 1...5 {
           var imageName = "frame_" + String(num) + "_delay-0.1s.gif"
            print(imageName)
        image.image = UIImage(named: imageName)
        }
 */
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

