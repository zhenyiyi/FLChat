//
//  LoginViewInterface.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

/*  登录接口 */
protocol LoginViewInterface : GetTheDestinationViewController{
    func loginFailure(errorMessage: String);
    func setupMainViewController();
}
