//
//  PaymentCell.swift
//  Toco
//
//  Created by Roland Shen on 4/2/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

class PaymentCell: UITableViewCell {
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var requestButton: UIButton!
    
    @IBAction func requestPressed(_ sender: Any) {
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "$1 requested from \(self.nameLabel.text!)"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: superview!)
        hud.dismiss(afterDelay: 1.0)
    }
}
