//
//  ViewController.swift
//  swipesAndShakes
//
//  Created by Doug Wells on 12/17/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Swipe Right Gesture
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
    
        self.view.addGestureRecognizer(swipeRight)
        
        //Swipe Left Gesture
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        
        self.view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("I am all shooken up")
        }
    }
    
    func swiped (gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.right: print("User swiped right")
                
            case UISwipeGestureRecognizerDirection.left: print("User swiped left")
                
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

