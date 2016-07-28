//
//  ArrayDataSource.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit
import Foundation

class ArrayDataSource: NSObject, UITableViewDataSource{
    
    var _items : Array<AnyObject>?;
    var _cellIdentifier: String = "";
    var _configureCellBlock : ((cell: AnyObject, item : AnyObject)->Void);
    
    init(items: Array<AnyObject>?, cellIdentifier: String, configureCellBlock: (cell: AnyObject, item : AnyObject)->Void) {
        _items = items;
        _cellIdentifier = cellIdentifier;
        _configureCellBlock = configureCellBlock;
    }
    
    func updateItems(items: Array<AnyObject>?) {
        _items = items;
    }
    
    func currentItems() -> Array<AnyObject>? {
        return _items;
    }
    
    
    func itemAtIndexPath(indexPath: NSIndexPath) -> AnyObject {
        return _items![indexPath.row];
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (_items?.count)!;
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier(_cellIdentifier, forIndexPath: indexPath);
        let item = itemAtIndexPath(indexPath);
        _configureCellBlock(cell: cell, item: item);
        return cell;
    }
}
