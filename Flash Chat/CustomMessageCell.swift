//
//  CustomMessageCell.swift
//  Flash Chat
//
//  Created by Doug Mason on 3/24/18.
//  Copyright © 2018 moros. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell
{
    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet var senderUsername: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
}
