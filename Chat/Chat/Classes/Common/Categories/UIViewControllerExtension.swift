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
    func addRightButton(title: String);
}

protocol ErrorPopoverRenderer {
    func presentError(message: String)
}

protocol SettingDependence {
    func setTheInterface();
}

protocol GetTheDestinationViewController {
    func getTheDestinationViewController(viewControllerIdentifier: String, storyboardName: String) -> UIViewController ;
}

protocol PushToViewController {
    func pushViewController(viewControllerIdentifier: String, storyboardName: String);
}


protocol TableViewAddHeaderRefresh {
    func addHeaderRefresh(tableView: UITableView, block:()->());
}

protocol TableViewAddFooterRefresh {
    func addFooterRefresh(tableView: UITableView, block:()->());
}

protocol ShowToastToViewController {
    func showToast(mes: String?);
    func showToast(mes: String?, hideAfterDelay seconds: Int);
}

protocol HideToastToViewController {
    func HideToast();
}


extension UIViewController: AddLeftButtonRenderer, AddRightButtonRenderer, ErrorPopoverRenderer, SettingDependence
{
    
    // MARK: AddLeftButtonRenderer
    func addLeftButton() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "left_barbutton"), style: .Plain, target: self, action: #selector(UIViewController.leftBarButtonClick(_:)));
    }
    
    func leftBarButtonClick(barButtonItem : UIBarButtonItem?)  {
        self.navigationController?.popViewControllerAnimated(true);
    }
    
    // MARK: AddRightButtonRenderer
    func addRightButton(title: String) {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: title, style: .Plain, target: self, action:  #selector(UIViewController.rightBarButtonClick(_:)));
    }
    
    func rightBarButtonClick(barButtonItem : UIBarButtonItem?)  {
        
    }
    
    // MARK: ErrorPopoverRenderer
    func presentError(message: String) {
        
    }
    
    func setTheInterface() {
        
    }
}

extension UIViewController : PushToViewController , GetTheDestinationViewController, TableViewAddHeaderRefresh, TableViewAddFooterRefresh {
    
    func pushViewController(viewControllerIdentifier: String, storyboardName: String) {
        let viewController = getTheDestinationViewController(viewControllerIdentifier, storyboardName: storyboardName);
        self.navigationController?.pushViewController(viewController, animated: true);
    }
    
    func getTheDestinationViewController(viewControllerIdentifier: String, storyboardName: String)-> UIViewController {
        let storyborad = UIStoryboard(name: storyboardName, bundle: nil);
        return storyborad.instantiateViewControllerWithIdentifier(viewControllerIdentifier) ;
    }
    
    
    func addHeaderRefresh(tableView: UITableView, block: () -> ()) {
        
        
    }
    
    func addFooterRefresh(tableView: UITableView, block: () -> ()) {
        
    }
}


extension UIViewController: RequestFinishedProtocol{
    
    //MARK: RequestFinishedProtocol
    func requestSuccess(reponse: AnyObject?) {
        
    }
    
    func requestFailure(errorMessage: String?, error: AnyObject?) {
        if errorMessage != nil {
            presentError(errorMessage!);
        }
    }
}




