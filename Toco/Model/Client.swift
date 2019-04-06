//
//  Client.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit

class Client {
    var name: String?
    var address: Address?
    var phone: String?
    var picture: UIImage?
    var notes: String?
    
    init(name: String, address: Address?, phone: String, notes: String?, picture: UIImage) {
        self.name = name
        self.address = address;
        self.phone = phone;
        self.picture = picture;
        self.notes = notes;
    }
}
