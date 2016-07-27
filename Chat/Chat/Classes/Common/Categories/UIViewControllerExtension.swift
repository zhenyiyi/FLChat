//
//  UIViewControllerExtension.swift
//  VIPER-SWIFT
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import Foundation
import UIKit


protocol AddLeftButtonRenderer {
    func addLeftButton();
}

protocol AddRightButtonRenderer {
    func addRightButton();
}

protocol ErrorPopoverRenderer {
    func presentError(message: String)
}

protocol SettingDependence {
    func setTheInterface();
}

extension UIViewController: AddLeftButtonRenderer, AddRightButtonRenderer, ErrorPopoverRenderer, SettingDependence{
    
    // MARK: AddLeftButtonRenderer
    func addLeftButton() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "left_barbutton"), style: .Plain, target: self, action: #selector(UIViewController.leftBarButtonClick(_:)));
    }
    
    func leftBarButtonClick(barButtonItem : UIBarButtonItem?)  {
        self.navigationController?.popViewControllerAnimated(true);
    }
    
    // MARK: AddRightButtonRenderer
    func addRightButton() {
         self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: ""), style: .Plain, target: self, action: #selector(UIViewController.rightBarButtonClick(_:)));
    }
    
    func rightBarButtonClick(barButtonItem : UIBarButtonItem?)  {
        
    }
    
    // MARK: ErrorPopoverRenderer
    func presentError(message: String) {
        
    }
    
    func setTheInterface() {
        
    }
}





