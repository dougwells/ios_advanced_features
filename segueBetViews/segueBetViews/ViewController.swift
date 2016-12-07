//
//  ViewController.swift
//  segueBetViews
//
//  Created by Doug Wells on 12/6/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

let globalVariable = "Doug"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var userChosenRow = 0
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
            cell.textLabel?.text = "Row \(indexPath.row)"
        
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        userChosenRow = indexPath.row
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("VC1: ", globalVariable)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toSecondViewController" {
            let secondViewController = segue.destination as! SecondViewController
            print("Value of username BEFORE seque: ", secondViewController.username)
            secondViewController.username = "Linda"
            secondViewController.activeRow = userChosenRow
        }
    }
}

