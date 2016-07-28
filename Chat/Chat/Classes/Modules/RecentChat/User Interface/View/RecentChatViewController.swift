//
//  RecentChatViewController.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

let recentChatCellIdentifier = "cellIdentifier";

class RecentChatViewController: UIViewController, ArrayDataSourceInterface{

    @IBOutlet var tableView: UITableView!
    @IBOutlet var noContentView: UIView!
    
    var _eventHanlder : RecentChatInteractor?
    var _dataSource : ArrayDataSource?
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        self.setTheInterface();
        _dataSource = ArrayDataSource(items: nil, cellIdentifier: recentChatCellIdentifier, configureCellBlock: { (cell, item) in
            (cell as! RecentChatCell).configureCell(item);
        });
        self.tableView.dataSource = _dataSource;
        
//        self.tableView.registerNib(UINib(nibName: "RecentChatCell",bundle: nil) , forCellReuseIdentifier: recentChatCellIdentifier);
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: recentChatCellIdentifier);
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        _eventHanlder?.loadRecentConversations();
    }
    
    override func setTheInterface() {
        _eventHanlder = RecentChatInteractor();
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
