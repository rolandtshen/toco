//
//  MapVC.swift
//  Toco
//
//  Created by Pearl on 3/4/2562 BE.
//  Copyright © 2562 Toco. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapVC: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        
        for client:Client in Clients.clients {
            let point = MKPointAnnotation()
            point.title = client.getName()
            point.coordinate = client.getAddress().getCoordinates()
            map.addAnnotation(point)
        }
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.065627, longitude: -118.319373), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        map.setRegion(region, animated: true)
    }

 
}
