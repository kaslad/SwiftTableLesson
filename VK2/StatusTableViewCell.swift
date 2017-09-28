//
//  StatusTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {

    @IBOutlet weak var textStatusLabel: UILabel!
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        textStatusLabel.text = user.information?[indexPath.section].rowName[indexPath.row]
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
