//
//  ViewController.swift
//  swipeDemo-tinderesque
//
//  Created by Doug Wells on 1/15/17.
//  Copyright © 2017 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Add element to the screen programatically (w/o storyboard)
        let label = UILabel(frame: CGRect(x: self.view.bounds.width/2 - 100, y: self.view.bounds.height/2 - 50, width: 200, height: 100))
        
        label.text = "Drag me"
        label.textAlignment = NSTextAlignment.center
        
        view.addSubview(label)
        
        //Recognizer user gesture "pan"/swipe & run fn "wasDragged"
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(self.wasDragged(gestureRecognizer:)))
        
        //Make label interactive (by default a label is not)
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(gesture)
        
    }
    
    func wasDragged(gestureRecognizer: UIPanGestureRecognizer) {
        
    //Move label center to where user drags.
        //translation: location user drag stops relative to start
        let translation = gestureRecognizer.translation(in: view)
        
    //Define label (on gestureRecognizer passed in) & move label
        let label = gestureRecognizer.view!
        label.center = CGPoint(x: self.view.bounds.width/2 + translation.x, y: self.view.bounds.height/2 + translation.y)
        
    //Do diff actions if label moved left vs right
        if gestureRecognizer.state == UIGestureRecognizerState.ended {
            
            print(translation)
            
            if translation.x < 0 {
            
                print ("Not chosen")
            
            } else {
                print ("Chosen")
            }
            
            label.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

