//
//  UITableViewCellExtension.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

extension UITableViewCell: CommonCellProtocol {
    static func nib() -> UINib {
        print(NSStringFromClass(self.classForCoder()).componentsSeparatedByString(".").last!);
        let nibName = NSStringFromClass(self.classForCoder()).componentsSeparatedByString(".").last!;
        return UINib(nibName:nibName, bundle: NSBundle.mainBundle());
    }
    func configureCell(model: AnyObject) {
        
    }
}
