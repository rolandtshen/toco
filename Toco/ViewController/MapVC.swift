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

class MapVC: UIViewController, MKMapViewDelegate, UISearchBarDelegate {
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    var clients:[Client] = [Client]()
    
    override func viewDidLoad() {
        
        for client:Client in clients {
            var point = MKPointAnnotation()
            point.title = client.getName()
            point.coordinate = client.getAddress().getCoordinates()
            map.addAnnotation(point)
        }
        
        var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.043627, longitude: -118.300673), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
        map.setRegion(region, animated: true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("searching")
    }
 
}
