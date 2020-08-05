//
//  MapViewController.swift
//  Find My Restroom
//
//  Created by Ethan Yu on 8/4/20.
//  Copyright © 2020 Ethan Yu. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var region = MKCoordinateRegion()
    var mapItems = [MKMapItem]()
    var selectedMapItem = MKMapItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        mapView.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let location = locations.first!
    let center = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
    let span = MKCoordinateSpan(latitudeDelta: 0.035, longitudeDelta: 0.035)
    region = MKCoordinateRegion(center: center, span: span)
    mapView.setRegion(region, animated: true)
    }
    
    
    

}
