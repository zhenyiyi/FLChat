//
//  RecentChatInterface.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

protocol ArrayDataSourceInterface {
    
    func showNoContentMessage();
    func showUpcomingDisplayData(data: Array<AnyObject>);
    func reloadEntries ();
    
}