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
        Client(name: "Aurora Manning", address: Address(), phone: "", notes: "$1", picture: UIImage(named: "default")!),
        Client(name: "Markus Rubio", address: Address(), phone: "", notes: "$219", picture: UIImage(named: "default")!),
        Client(name: "Stephen Belser", address: Address(), phone: "", notes: "$39.29", picture: UIImage(named: "default")!),
        Client(name: "Chris Oxley", address: Address(), phone: "", notes: "$43", picture: UIImage(named: "default")!),
        Client(name: "Sam Lexington", address: Address(), phone: "", notes: "$88", picture: UIImage(named: "default")!),
        Client(name: "Janet Greenspan", address: Address(), phone: "", notes: "$10.99", picture: UIImage(named: "default")!),
        Client(name: "Pharah Bernanky", address: Address(), phone: "", notes: "$65.10", picture: UIImage(named: "default")!)
    ]
}
