//
//  ViewController.swift
//  Maps
//
//  Created by Doug Wells on 12/4/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set vars to make code cleaner.  Note: CL stands for "Call Location"
        let latitude: CLLocationDegrees = 40.6461
        let longitude: CLLocationDegrees = -111.4980
        let latDelta: CLLocationDegrees = 0.03
        let lonDelta: CLLocationDegrees = 0.03
        
        //Sets "zoom" level
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        //Sets location
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        //Sets initial "region" (location and zoom level with vars "location" & "span")
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        //Finally, time to tell iOS where in map to set initial location and zoom level
        //Technically, could simply use this line but code would not be clear ...
        map.setRegion(region, animated: true)
        
        //Add annotation
        let annotation = MKPointAnnotation()
        annotation.title = "Park City"
        annotation.subtitle = "I live here ..."
        annotation.coordinate = location
        map.addAnnotation(annotation)
        
    //Let user set annotation with a long press
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        uilpgr.minimumPressDuration = 2     //2 second press
        map.addGestureRecognizer(uilpgr)
        

    }
    
    func longpress (gestureRecognizer: UIGestureRecognizer) {
        let touchPoint = gestureRecognizer.location(in: self.map)
        let annotation = MKPointAnnotation()
        annotation.title = "You pressed here"
        annotation.subtitle = "Anything fun here?"
        annotation.coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        map.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

