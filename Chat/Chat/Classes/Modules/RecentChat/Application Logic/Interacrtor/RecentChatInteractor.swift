//
//  RecentChatInteractor.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class RecentChatInteractor: NSObject, RecentChatMoudleInterface {
    var userInterface : ArrayDataSourceInterface?
    func loadRecentConversations() {
        let allConversations = EMClient.sharedClient().chatManager.loadAllConversationsFromDB();
        if allConversations.count > 0 {
            userInterface?.showUpcomingDisplayData(allConversations);
        }else{
            userInterface?.showNoContentMessage();
        }
        
    }
}
