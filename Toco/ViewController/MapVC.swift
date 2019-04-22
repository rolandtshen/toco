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
import ChameleonFramework

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
        self.map.showsBuildings = true
        self.map.delegate = self
        self.getCustomers()
        self.detailView.isHidden = true

        detailView.layer.cornerRadius = 10
        advertiseButton.layer.cornerRadius = 7
        filterButton.direction = .Up
        filterButton.options = ["Customers", "Income", "Pop. Density"]
        filterButton.currentValue = filterButton.options[0];
        filterButton.cornerRadius = 6
        
        filterButton.optionSelectionBlock = { index in
            if(index == 0) {
                self.detailView.isHidden = true
                self.getCustomers()
            }
            else if(index == 1) {
                self.map.removeAnnotations(self.customers)
                self.getIncomeRegions()
                print("1")
            }
            else if(index == 2) {
                self.map.removeAnnotations(self.customers)
                self.getCustomers()
                print("2")
            }
        }
       
    }

    func getCustomers() {
        let customerRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.065627, longitude: -118.319373), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self.detailView.isHidden = false
        for client:Client in Clients.clients {
            let point = MKPointAnnotation()
            point.title = client.getName()
            point.coordinate = client.getAddress().getCoordinates()
            self.customers.append(point)
            self.map.addAnnotations(self.customers)
            self.map.setRegion(customerRegion, animated: true)
        }
        self.map.setRegion(customerRegion, animated: true)
    }
    
    func getIncomeRegions() {
        detailView.isHidden = false
        let incomeRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.887309, longitude: -118.370165), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        let redondo: [CLLocationCoordinate2D] = [
            CLLocationCoordinate2D(latitude: 33.872951, longitude: -118.380078),
            CLLocationCoordinate2D(latitude: 33.872915, longitude: -118.391408),
            CLLocationCoordinate2D(latitude: 33.856488, longitude: -118.384799),
            CLLocationCoordinate2D(latitude: 33.858340, longitude: -118.379006),
            CLLocationCoordinate2D(latitude: 33.855169, longitude: -118.378276),
            CLLocationCoordinate2D(latitude: 33.855953, longitude: -118.375444),
            CLLocationCoordinate2D(latitude: 33.858233, longitude: -118.375358),
            CLLocationCoordinate2D(latitude: 33.858340, longitude: -118.353190),
            CLLocationCoordinate2D(latitude: 33.863187, longitude: -118.358425),
            CLLocationCoordinate2D(latitude: 33.865361, longitude: -118.358983),
            CLLocationCoordinate2D(latitude: 33.865521, longitude: -118.352484),
            CLLocationCoordinate2D(latitude: 33.874311, longitude: -118.352564),
            CLLocationCoordinate2D(latitude: 33.872919, longitude: -118.354750),
            CLLocationCoordinate2D(latitude: 33.894590, longitude: -118.361402),
            CLLocationCoordinate2D(latitude: 33.894715, longitude: -118.378604),
            CLLocationCoordinate2D(latitude: 33.882707, longitude: -118.378652),
            CLLocationCoordinate2D(latitude: 33.881822, longitude: -118.379015),
            CLLocationCoordinate2D(latitude: 33.880125, longitude: -118.378646),
            CLLocationCoordinate2D(latitude: 33.880146, longitude: -118.378695),
            CLLocationCoordinate2D(latitude: 33.880108, longitude: -118.379989),
            CLLocationCoordinate2D(latitude: 33.872951, longitude: -118.380078),
        ]
        
        let polygon: MKPolyline = MKPolyline(coordinates: redondo, count: redondo.count)
        
        self.map.addOverlay(polygon)
        
        self.map.setRegion(incomeRegion, animated: true)
    }
    
    @IBAction func closePressed(_ sender: Any) {
        detailView.isHidden = true
    }
}


extension MapVC {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKCircle {
            let renderer = MKCircleRenderer(overlay: overlay)
            renderer.fillColor = UIColor.black.withAlphaComponent(0.5)
            renderer.strokeColor = UIColor.blue
            renderer.lineWidth = 2
            return renderer
            
        } else if overlay is MKPolyline {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = UIColor.orange
            renderer.lineWidth = 3
            return renderer
            
        } else if overlay is MKPolygon {
            let renderer = MKPolygonRenderer(polygon: overlay as! MKPolygon)
            renderer.fillColor = UIColor.black.withAlphaComponent(0.5)
            renderer.strokeColor = UIColor.orange
            renderer.lineWidth = 2
            return renderer
        }
        
        return MKOverlayRenderer()
    }
}
