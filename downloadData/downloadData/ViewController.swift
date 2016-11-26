//
//  ViewController.swift
//  downloadData
//
//  Created by Doug Wells on 11/25/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        if let url = URL(string: "https://www.stackoverflow.com") {
            
            let request = NSMutableURLRequest(url:url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
                
                if error != nil {
                    print(error)
                    
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    }
                }
            }
            
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

