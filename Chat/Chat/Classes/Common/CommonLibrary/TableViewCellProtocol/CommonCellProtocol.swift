//
//  CommonCellProtocol.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

protocol CommonCellProtocol {
    static func nib() -> UINib;
    
    
    func configureCell(model: AnyObject);
}






