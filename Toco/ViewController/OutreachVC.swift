//
//  OutreachVC.swift
//  Toco
//
//  Created by Pearl on 15/4/2562 BE.
//  Copyright © 2562 Toco. All rights reserved.
//

import Foundation
import UIKit

class OutreachVC:UIViewController {
    
    @IBOutlet weak var templateView: UITextField!
    
    var views:[UIView] = [UIView]()
    var firstResponder:UIView?
    let TEXT_RECT:CGRect = CGRect(x: 0, y: 0, width: 100, height: 60)
    
    
    override func viewDidLoad() {
        UIGraphicsBeginImageContext(templateView.frame.size)
        UIImage(named: "template")?.draw(in: templateView.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        templateView.backgroundColor = UIColor(patternImage: image)
        
        templateView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedView(sender:))));
        templateView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(didPan(sender:))));
        templateView.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: #selector(didPinch(sender:))));
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedView(sender:))))
    }
    
    @IBAction func textButtonPressed(_ sender: Any) {
        let label:UITextView = UITextView(frame: TEXT_RECT);
        label.center = templateView.frame.origin
        label.textAlignment = .left
        label.text = "Write text here"
        label.isUserInteractionEnabled = true
        label.textContainer.lineBreakMode = .byWordWrapping
        label.backgroundColor = .clear
        
        label.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(textTapped(sender:))));
        label.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(didPan(sender:))));
        templateView.addSubview(label)
        views.append(label);
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
    }
    
    @objc func textTapped(sender: UITapGestureRecognizer) {
        sender.view?.becomeFirstResponder()
        firstResponder = sender.view
    }
    
    @objc func tappedView(sender: UITapGestureRecognizer) {
        firstResponder?.resignFirstResponder();
    }

    @objc func didPan(sender: UIPanGestureRecognizer) {
        firstResponder?.resignFirstResponder();
        let location = sender.location(in: view)
        let translation = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        
        sender.view?.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
    }
    
    @objc func didPinch(sender: UIPinchGestureRecognizer) {
         firstResponder?.resignFirstResponder();
        var scale = sender.scale
        var velocity = sender.velocity

        sender.view?.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func textModeChanged(_ sender: Any) {
        // 0-color, 1-bold, 2-itallic
        print("checking case")
        switch (sender as! UIButton).tag {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        default:
            break;
        }
    }

}
