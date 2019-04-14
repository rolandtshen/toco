//
//  PaymentVC.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

class PaymentVC: UITableViewController, UINavigationControllerDelegate, PaymentCellDelegate {
    
    @IBOutlet var popup: UIView!
    @IBOutlet weak var aPayButton: UIButton!
    @IBOutlet weak var gPayButton: UIButton!
    @IBOutlet weak var sPayButton: UIButton!
    @IBOutlet weak var vPayButton: UIButton!
    
    var clients = Clients.clients
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        aPayButton.layer.cornerRadius = 4
        gPayButton.layer.cornerRadius = 4
        sPayButton.layer.cornerRadius = 4
        vPayButton.layer.cornerRadius = 4
        aPayButton.layer.borderWidth = 0.5;
        gPayButton.layer.borderWidth = 0.5;
        sPayButton.layer.borderWidth = 0.5;
        aPayButton.layer.borderColor = UIColor.lightGray.cgColor
        gPayButton.layer.borderColor = UIColor.lightGray.cgColor
        sPayButton.layer.borderColor = UIColor.lightGray.cgColor
        vPayButton.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func showPaymentMethods() {
        self.view.addSubview(popup)
        popup.center = self.view.center
        popup.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.popup.alpha = 1.0
            self.popup.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
        tableView.backgroundView?.alpha = 0.5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paymentCell") as! PaymentCell
        cell.nameLabel.text = clients[indexPath.row].name!
        cell.descriptionLabel.text = clients[indexPath.row].notes!
        cell.profilePic.image = clients[indexPath.row].picture
        cell.profilePic.layer.cornerRadius = cell.profilePic.frame.width / 2
        cell.requestButton.layer.cornerRadius = 5
        cell.delegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clients.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
