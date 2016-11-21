//
//  ViewController.swift
//  tableView50
//
//  Created by Doug Wells on 11/21/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var countLimit:Int = 50
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //simply asking how many rows are there in the table
        
        return countLimit

    }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Defines the contents of each cell
        //(create cell & decide what you want in it
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        if countLimit > 0 {
            cell.textLabel?.text = String(countLimit)
            countLimit -= 1
            
        }
        return cell
        
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

