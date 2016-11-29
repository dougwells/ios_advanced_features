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
    @IBOutlet weak var startStopBtn: UIButton!
    
    var count = 1
    
    var timer = Timer.scheduledTimer(timeInterval: 1,
        target: self,
        selector: Selector(("animateFunction")),
        userInfo: nil,
        repeats: true)
    
 
    
    
    @IBAction func nextTapped(_ sender: Any) {
        if startStopBtn.currentTitle == "Play" {
            startStopBtn.setTitle("Pause",for: .normal)
        
        } else {
            timer.invalidate()
            startStopBtn.setTitle("Play", for: .normal)
            

        }

/*
         if count > 5 {count = 0 }
         let imageName = "frame_" + String(count) + "_delay-0.1s.gif"
         image.image = UIImage(named: imageName)
         count = count + 1
*/

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
    
    func animateFunction () {
        print("Hello World!")
        count = count + 1
        if count > 5 {timer.invalidate()}
    }


}

