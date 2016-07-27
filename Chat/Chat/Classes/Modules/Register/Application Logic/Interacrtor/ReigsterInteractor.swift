//
//  ReigsterInteractor.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class ReigsterInteractor: NSObject, RegisterModuleInterface{
    var userInterface : RegisterViewInterface?
    func reigister(username: String?, password: String?) {
        if username!.isEmpty || password!.isEmpty{
            userInterface?.registerCompletion(false, message: "用户名或密码不能为空");
        }else{
            EMClient.sharedClient().asyncRegisterWithUsername(username, password: password, success: { [unowned self] () ->() in
                    self.userInterface?.registerCompletion(true, message: nil);
                }, failure: { [unowned self] (error: EMError!) in
                    self.userInterface?.registerCompletion(false, message: error.errorDescription);
            });
        }
        
    }
}
