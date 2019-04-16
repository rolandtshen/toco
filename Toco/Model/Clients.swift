//
//  Clients.swift
//  Toco
//
//  Created by Roland Shen on 4/5/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit

struct Clients {
    static var clients: [Client] = [
        Client(name: "Aurora Manning", address: addresses[0], phone: "", notes: "$1", picture: UIImage(named: "default")!),
        Client(name: "Markus Rubio", address: addresses[1], phone: "", notes: "$219", picture: UIImage(named: "default")!),
        Client(name: "Stephen Belser", address: addresses[2], phone: "", notes: "$39.29", picture: UIImage(named: "default")!),
        Client(name: "Chris Oxley", address: addresses[3], phone: "", notes: "$43", picture: UIImage(named: "default")!),
        Client(name: "Sam Lexington", address: addresses[4], phone: "", notes: "$88", picture: UIImage(named: "default")!),
        Client(name: "Janet Greenspan", address: addresses[5], phone: "", notes: "$10.99", picture: UIImage(named: "default")!),
        Client(name: "Pharah Bernanky", address: addresses[6], phone: "", notes: "$65.10", picture: UIImage(named: "default")!)
    ]
    
    static var addresses:[Address] = [
        Address(latitude: 34.043627, longitude: -118.300673),
        Address(latitude: 34.054627, longitude: -118.301643),
        Address(latitude: 34.065627, longitude: -118.319373),
        Address(latitude: 34.076627, longitude: -118.305273),
        Address(latitude: 34.087627, longitude: -118.319773),
        Address(latitude: 34.098627, longitude: -118.320873),
        Address(latitude: 34.039627, longitude: -118.338973),
    ]
}
