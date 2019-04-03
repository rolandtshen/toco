//
//  PaymentVC.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit

class PaymentVC: UITableViewController {
    
    var clients: [Client] = [
        
    ]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell") as! PaymentCell
        cell.nameLabel.text = clients[indexPath.row].name!
        cell.descriptionLabel.text = clients[indexPath.row].phone!
        cell.profilePic.image = clients[indexPath.row].picture
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clients.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
