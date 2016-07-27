//
//  RegisterViewController.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, RegisterViewInterface {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var userpassword: UITextField!
    
    var _eventHandlder : ReigsterInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addLeftButton();
        setTheInterface();
    }
    
    override func setTheInterface() {
        _eventHandlder = ReigsterInteractor();
        _eventHandlder?.userInterface = self;
    }

    /*注册*/
    @IBAction func register(sender: UIButton) {
        _eventHandlder?.reigister(username.text, password: userpassword.text);
    }
    
    func registerCompletion(success: Bool, message: String?) {
        presentError(message!);
        leftBarButtonClick(nil);
    }
}
