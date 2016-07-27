//
//  AppDependence.swift
//  Chat
//
//  Created by fenglin on 16/7/27.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

let EMAppKey = "cheyaoshi#carkeyim";
let EMApnsCertName = "carkyim"

class AppDependence: NSObject {
    
    func setDependence(launchOptions: [NSObject: AnyObject]?)  {
        
        //MARK: 注册环信。
        let emOptions =  EMOptions(appkey: EMAppKey);
        emOptions.apnsCertName = EMApnsCertName;
        let emClient = EMClient.sharedClient();
        emClient.initializeSDKWithOptions(emOptions);
        emClient.dataMigrationTo3();
        
        //MARK： Push
//        let application = UIApplication.sharedApplication()
//        application.registerForRemoteNotifications()
//        let notificationSetting = UIUserNotificationSettings(forTypes: UIUserNotificationType.Alert |  UIUserNotificationType.Sound |  UIUserNotificationType.Badge, categories: nil);
//        application.registerUserNotificationSettings()
        
    }
}


//protocol <#name#> {
//    <#requirements#>
//}