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
        
    //define path to previously saved image
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = documentsPath[0]
        let restorePath = documentsDirectory + "/duckDive.jpg"
        
        //set UIImageView to saved image
        surfSunsetImageView.image = UIImage(contentsOfFile: restorePath)
        
    /*
      //Download image from Internet
         
        let url = URL(string: "https://s-media-cache-ak0.pinimg.com/564x/17/0a/0d/170a0d8787021b4b3d9c91cea007805e.jpg")!
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            if error != nil {
                print("Failed to download image", error)
                
            } else {
                
            if  data != nil {    //unwraps data if exists
                if let duckDive = UIImage(data: data!) {
               
                //show image
                    self.surfSunsetImageView.image = duckDive
               
                //save image locally
                    //set path to save image
                    let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                    let documentsDirectory = documentsPath[0]
                    let savePath = documentsDirectory + "/duckDive.jpg"
                        
                    //save image itself
                        do {
                        try UIImageJPEGRepresentation(duckDive, 1)?.write(to: URL(fileURLWithPath: savePath))
                        } catch {
                            print("Error saving image locally", error)
                        }
                    
                    } //end if let surfSunset
                }
                
            }
        }
        task.resume()
    */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

