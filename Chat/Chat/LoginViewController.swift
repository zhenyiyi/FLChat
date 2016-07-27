//
//  LoginViewController.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController ,LoginViewInterface {

    var _eventHanlder : LoginInteractor?
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var userpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTheInterface();
    }
    /*登录*/
    @IBAction func loginAction(sender: UIButton) {
        _eventHanlder?.login(username.text, password: userpassword.text);
    }
    
    override func setTheInterface() {
        _eventHanlder = LoginInteractor();
        _eventHanlder!.userInterface = self;
    }
    
    func completionLogin(error: String) {
        presentError(error);
    }
    
}
