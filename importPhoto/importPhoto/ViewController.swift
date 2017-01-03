//
//  ViewController.swift
//  importPhoto
//
//  Created by Doug Wells on 1/3/17.
//  Copyright © 2017 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func importImage(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        
        //gives ViewController control of imagePickerController
        imagePickerController.delegate = self
        
        //can set imagePicker to camera or photo library
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imagePickerController.allowsEditing = false
        
        //present imagePicker's image
        self.present(imagePickerController, animated: true, completion: nil)
        
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

