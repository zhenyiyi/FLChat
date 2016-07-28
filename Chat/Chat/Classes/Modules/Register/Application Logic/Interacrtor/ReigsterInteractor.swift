//
//  ReigsterInteractor.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class ReigsterInteractor: NSObject, RegisterModuleInterface{
    var userInterface : RequestFinishedProtocol?
    func reigister(username: String?, password: String?) {
        if username!.isEmpty || password!.isEmpty{
            userInterface?.requestFailure("用户名或密码不能为空", error: nil);
        }else{
            EMClient.sharedClient().asyncRegisterWithUsername(username, password: password, success: { [unowned self] () ->() in
                self.userInterface?.requestSuccess(nil);
                }, failure: { [unowned self] (error: EMError!) in
                    self.userInterface?.requestFailure(error.errorDescription, error: nil);
            });
        }
        
    }
}
