//
//  MainInformationTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class MainInformationTableViewCell: UITableViewCell {

    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var fillingLabel: UILabel!
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        typeLabel.text = user.information?[indexPath.section].rowName[indexPath.row]
        fillingLabel.text = user.information?[indexPath.section].rowFilling[indexPath.row]
        if(typeLabel.text == "Братья, сестры" ){
            fillingLabel.textColor = UIColor.blue
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
