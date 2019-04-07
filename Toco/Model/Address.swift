//
//  Address.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation

class Address {
    var addressLine1:String = ""
    var addressLine2:String = ""
    var city:String = ""
    var state:String = ""
    var country:String = ""
    var postalCode:String = ""
    var longitude:CLLocationDegrees = 0
    var latitude:CLLocationDegrees = 0
    
    init() {
        
    }
    
    init(addressLine1: String, addressLine2:String, city:String, state:String, country:String, postalCode:String, longitude:String, latitude:String) {
    }
    
    func getCoordinates() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
