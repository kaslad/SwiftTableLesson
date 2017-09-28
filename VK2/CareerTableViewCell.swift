//
//  CareerTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class CareerTableViewCell: UITableViewCell {

    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        companyNameLabel.text = user.information?[indexPath.section].rowName[indexPath.row]
        jobLabel.text = user.information?[indexPath.section].rowFilling[indexPath.row]
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
