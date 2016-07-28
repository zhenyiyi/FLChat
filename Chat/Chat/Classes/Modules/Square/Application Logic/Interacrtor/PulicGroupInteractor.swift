//
//  PulicGroupInteractor.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit



class PulicGroupInteractor: NSObject, PublicGroupModuleInterface {
    
    var userInterface : ArrayDataSourceInterface?
    
    var _cursor: String?
    
    var _dataArr: Array<AnyObject> = Array();
    
    func loadPublicGroupInfo() {
//        userInterface?.showNoContentMessage();
        
        EMClient.sharedClient().groupManager.asyncGetPublicGroupsFromServerWithCursor(_cursor, pageSize: kPageSize, success: { [unowned self] (aCursor: EMCursorResult!) in
            self.hanlderGoupList(aCursor);
            print(aCursor.list);
        }) { (aError: EMError!) in
            print(aError.errorDescription);
        }
    }
    
    func hanlderGoupList(result : EMCursorResult) {
        _cursor = result.cursor;
        _dataArr.appendContentsOf(result.list);
        if _dataArr.count > 0  {
            
        }else{
            userInterface?.showNoContentMessage();
        }
        
    }
}
