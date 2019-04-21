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
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var advertiseButton: UIButton!
    @IBOutlet weak var filterButton: VKExpandableButton!
    
    var customers: [MKPointAnnotation] = [];
    
    override func viewDidLoad() {
        let customerRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.065627, longitude: -118.319373), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self.map.setRegion(customerRegion, animated: true)
        detailView.layer.cornerRadius = 10
        advertiseButton.layer.cornerRadius = 7
        filterButton.direction = .Up
        filterButton.options = ["Customers", "Income", "Age"]

        filterButton.optionSelectionBlock = { index in
            if(index == 0) {
                self.detailView.isHidden = true
                for client:Client in Clients.clients {
                    let point = MKPointAnnotation()
                    point.title = client.getName()
                    point.coordinate = client.getAddress().getCoordinates()
                    self.customers.append(point)
                    self.map.addAnnotations(self.customers)
                    self.map.setRegion(customerRegion, animated: true)
                }
            }
            else {
                self.detailView.isHidden = false
                self.map.removeAnnotations(self.customers)
                print("index: \(index)")
            }
        }
       
    }

    @IBAction func closePressed(_ sender: Any) {
        detailView.isHidden = true;
    }
    
}
