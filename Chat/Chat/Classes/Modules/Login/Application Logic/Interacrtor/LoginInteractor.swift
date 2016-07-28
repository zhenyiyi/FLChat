//
//  LoginInteractor.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class LoginInteractor: NSObject, LoginModuleInterface {
    
    var userInterface : LoginViewInterface?
    
    func login(username: String?, password: String?) {
        if username!.isEmpty || password!.isEmpty {
            userInterface?.loginFailure("用户名或密码不能为空");
        }else{
            EMClient.sharedClient().asyncLoginWithUsername(username, password: password, success: { [unowned self]() in
                    self.userInterface?.setupMainViewController();
                }, failure: { (error: EMError!) in
                    self.userInterface?.loginFailure("error.errorDescription");
            })
        }
    }
}
