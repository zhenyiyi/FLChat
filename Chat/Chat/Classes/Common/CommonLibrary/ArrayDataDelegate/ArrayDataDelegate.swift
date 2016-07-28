//
//  ArrayDataDelegate.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class ArrayDataDelegate: NSObject, UITableViewDelegate{
    
    init(items:Array<AnyObject>?, height: CGFloat, canEdit: Bool) {
        
    }
    
    internal func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 0;
    }
    
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
    }
    
    
    internal func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
    }
    
    internal func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool{
        return true;
    }
}
