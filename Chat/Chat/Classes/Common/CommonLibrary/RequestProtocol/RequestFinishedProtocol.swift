//
//  RequestFinishedProtocol.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

protocol RequestFinishedProtocol {
    
    func requestSuccess(reponse: AnyObject?);
    
    func requestFailure(errorMessage: String?, error: AnyObject?);
}
