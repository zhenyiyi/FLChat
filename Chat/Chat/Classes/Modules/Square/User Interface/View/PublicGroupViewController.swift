//
//  PublicGroupViewController.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class PublicGroupViewController: UIViewController, ArrayDataSourceInterface {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var noContentView: UIView!
    
    var _eventHanlder : PulicGroupInteractor?
    var _dataSource : ArrayDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRightButton("创建群组");
        setTheInterface();
        self.tableView.dataSource = ArrayDataSource(items: nil, cellIdentifier: recentChatCellIdentifier, configureCellBlock: { (cell, item) in
            (cell as! RecentChatCell).configureCell(item);
        });
        _eventHanlder?.loadPublicGroupInfo();
    }

    @IBAction func refreshAction(sender: UITapGestureRecognizer) {
        _eventHanlder?.loadPublicGroupInfo();
    }
    override func setTheInterface() {
        _eventHanlder = PulicGroupInteractor();
        _eventHanlder?.userInterface = self;
    }
    
    func showNoContentMessage() {
        self.view = self.noContentView;
    }
    
    func showUpcomingDisplayData(data: Array<AnyObject>) {
        self.view = self.tableView;
        _dataSource?.updateItems(data);
        self.tableView.reloadData();
    }
    
    func reloadEntries() {
        
    }
    

}
