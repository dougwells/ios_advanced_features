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
    var timer = Timer()
    
    @IBAction func fadeTapped(_ sender: Any) {
        //fade image in
        
        //set start point (image transparent)
        image.alpha = 0
        
        //animate image transparancy to 1)
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
            }
        )
    }
    
    @IBAction func slideTapped(_ sender: Any) {
        //move image from left to right
        
        //set start point (x = 500 to left)
        image.center = CGPoint(x: image.center.x - 500, y:image.center.y)
        
        //animate: move image from left to center
        UIView.animate(withDuration: 1, animations: {
            self.image.center = CGPoint(x: self.image.center.x+500, y: self.image.center.y)
        })
        
    }
    
    @IBAction func growTapped(_ sender: Any) {
        // Note different syntax for animate.
        // Can use either animation syntax
        
        //capture coordinates for original location
        let x = image.frame.minX
        let y = image.frame.minY
        let width = image.frame.width
        let height = image.frame.height
        
        image.frame = CGRect(x: x, y: y, width: 0, height: 0)
        UIView.animate(withDuration: 1){
            self.image.frame = CGRect(x: x, y: y, width: width, height: height)
        }
    }

    
    @IBAction func nextTapped(_ sender: Any) {
        if startStopBtn.currentTitle == "Play" {
            startStopBtn.setTitle("Pause",for: .normal)
            
            timer = Timer.scheduledTimer(
                timeInterval: 0.3,
                target: self,
                selector: #selector(ViewController.animate),
                userInfo: nil,
                repeats: true
            )
        
        } else {
            timer.invalidate()
            startStopBtn.setTitle("Play", for: [])
            
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animate() {
        if count > 5 {count = 0 }
        let imageName = "frame_" + String(count) + "_delay-0.1s.gif"
        image.image = UIImage(named: imageName)
        count = count + 1
    }
    


}

