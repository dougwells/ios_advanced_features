//
//  ViewController.swift
//  downloadFromWeb
//
//  Created by Doug Wells on 12/25/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var surfSunsetImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://s-media-cache-ak0.pinimg.com/564x/2a/77/21/2a7721cfae2c24431d8e4aaf746cc036.jpg")!
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            if error != nil {
                print(error)
                
            } else {
                
            if  data != nil {    //unwraps data if exists
                if let surfSunset = UIImage(data: data!) {
                        self.surfSunsetImageView.image = surfSunset
                    
                    }
                }
                
            }
        }
        task.resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

