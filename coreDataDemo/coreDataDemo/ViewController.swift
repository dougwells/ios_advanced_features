//
//  ViewController.swift
//  coreDataDemo
//
//  Created by Doug Wells on 12/19/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Gives us access to methods in AppDelegate.swift
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        /*
         1) variable, "context" is similar to setting up "manager" that allowed us to work location or audio
         2) persistentContainer is a container for persistent storage or CoreData
         3) context gives us access to add & modify the data in the persistent container
        */
            let context = appDelegate.persistentContainer.viewContext
        
        //Create object that allows us to save a new user
            let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        /*
        newUser.setValue("Ruth", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        newUser.setValue(83, forKey: "age")
        */
        
        do {
            
            try context.save()
            print("Saved")
            
        } catch {
            print("Error in saving to Database. Do-Try-Catch")
        }
        
        /* 
         Retrieve data (note must set .returnsObjectsAsFaults to false)
            - Swift defaults to returning just "faults" from DB query.
            - Set to false so returns DB stored objects, not just faults
        */
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        //request.predicate = NSPredicate(format: "%K > %D", "age", 59)
        
        //request.predicate = NSPredicate(format: "age < %@", "21")
        
        request.predicate = NSPredicate(format: "username = %@", "Doug")
        
        request.returnsObjectsAsFaults = false
        
        
        do {
            let results = try context.fetch(request)
            
            if (results.count > 0) {
                
                //loop thru array of result objects and print username
                for result in results as! [NSManagedObject] {
                    if let username = result.value(forKey: "username") as? String {
                        print(username)
                    }
                    
                    context.delete(result)
                    
                    do {
                        try context.save()
                        print("Delete succeeded")
                        
                    } catch {
                        print("Delete Failed")
                    }
                    
                    
                    if let username = result.value(forKey: "username") as? String {
                        print(username)
                    }
                }
            } else {
                print("No results")
            }
        } catch {
            print("Error retrieving data")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

