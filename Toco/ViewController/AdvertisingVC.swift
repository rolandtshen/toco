//
//  AdvertisingVC.swift
//  Toco
//
//  Created by Roland Shen on 4/23/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

class AdvertisingVC: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        let contentInsets = UIEdgeInsets.zero
        self.scrollView.contentInset = contentInsets
        self.scrollView.scrollIndicatorInsets = contentInsets
    }
    @IBAction func purchasePressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "You purchased an ad!"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: (self.navigationController?.parent!.view)!)
        hud.dismiss(afterDelay: 1.5)
    }
}
