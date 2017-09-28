//
//  FollowersTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 23.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class FollowersTableViewCell: UITableViewCell {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarUIImageView: UIImageView!
    
    func prepareCell(with user: User){
        let attributedStringName = NSMutableAttributedString(string: user.name)
        let boldAttributes = [NSFontAttributeName : UIFont.boldSystemFont(ofSize: 15)]
        attributedStringName.append(NSMutableAttributedString(string: " " + user.surname, attributes:boldAttributes))
        nameLabel.attributedText = attributedStringName
        statusLabel.text = user.onlineStatus
        avatarUIImageView.image = user.avatar
        avatarUIImageView.layer.cornerRadius = avatarUIImageView.frame.size.width / 2
        avatarUIImageView.clipsToBounds = true

        
    }
   /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

     override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */
 
    
}
