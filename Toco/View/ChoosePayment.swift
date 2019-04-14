//
//  ChoosePayment.swift
//  Toco
//
//  Created by Roland Shen on 4/9/19.
//  Copyright © 2019 Toco. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

class ChoosePayment: UIView {
    
    func dismiss() {
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.removeFromSuperview()
            }
        });
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss()
    }
    
    @IBAction func aPayPressed(_ sender: Any) {
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "$1 requested from Johnny"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: superview!)
        hud.dismiss(afterDelay: 1.0)
        dismiss()
    }
    @IBAction func gPayPressed(_ sender: Any) {
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "$1 requested from Johnny"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: superview!)
        hud.dismiss(afterDelay: 1.0)
        dismiss()
    }
    @IBAction func sPayPressed(_ sender: Any) {
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "$1 requested from Johnny"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: superview!)
        hud.dismiss(afterDelay: 1.0)
        dismiss()
    }
    @IBAction func vPayPressed(_ sender: Any) {
        let hud: JGProgressHUD = JGProgressHUD(style: .dark)
        UIView.animate(withDuration: 0.1, animations: {
            hud.textLabel.text = "Success"
            hud.detailTextLabel.text = "$1 requested from Johnny"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        })
        hud.show(in: superview!)
        hud.dismiss(afterDelay: 1.0)
        dismiss()
        
    }
}
