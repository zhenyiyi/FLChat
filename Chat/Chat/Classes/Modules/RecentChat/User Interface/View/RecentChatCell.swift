//
//  RecentChatCell.swift
//  Chat
//
//  Created by fenglin on 16/7/28.
//  Copyright © 2016年 cys. All rights reserved.
//

import UIKit

class RecentChatCell: UITableViewCell {

    @IBOutlet weak var chatDate: UILabel!
    @IBOutlet weak var chatContent: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func configureCell(model: AnyObject) {
        let conversation = model as! EMConversation;
        let lastMessage = conversation.latestMessage;
        groupName.text = lastMessage.from;
        chatContent.text = lastMessage.messageId;
    }

}
