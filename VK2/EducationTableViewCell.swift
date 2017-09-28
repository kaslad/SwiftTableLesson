//
//  EducationTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class EducationTableViewCell: UITableViewCell {

    @IBOutlet weak var fillingLabel: UILabel!
    @IBOutlet weak var typeOfEducationLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        typeOfEducationLabel.text = user.information?[indexPath.section].rowName[indexPath.row]
        fillingLabel.text = user.information?[indexPath.section].rowFilling[indexPath.row]
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
