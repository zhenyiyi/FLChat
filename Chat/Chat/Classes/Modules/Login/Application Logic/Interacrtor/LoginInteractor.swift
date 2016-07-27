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
            userInterface?.completionLogin("用户名或密码不能为空");
        }
    }
}
