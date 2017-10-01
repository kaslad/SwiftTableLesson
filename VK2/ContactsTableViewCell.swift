//
//  ContactsTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    @IBOutlet weak var contactFillingLabel: UILabel!
    @IBOutlet weak var contactTypeUIImageView: UIImageView!
    
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        contactFillingLabel.text = user.information?[indexPath.section].rowFilling[indexPath.row]
        contactTypeUIImageView.image = user.information?[indexPath.section].rowImage[indexPath.row]
        if contactTypeUIImageView.image  == #imageLiteral(resourceName: "PhoneIcon"){
            contactFillingLabel.textColor = UIColor.blue
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

     
    
}
