//
//  GiftsTableViewCell.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class GiftsTableViewCell: UITableViewCell {

    @IBOutlet weak var amountOfGiftsLabel: UILabel!
    @IBOutlet weak var giftImageView4: UIImageView!
    @IBOutlet weak var giftImageView3: UIImageView!
    @IBOutlet weak var giftImageView2: UIImageView!
    @IBOutlet weak var giftImageView1: UIImageView!
    
    func prepareCell(with user: User, cellForRowAt indexPath: IndexPath){
        let amountOfGifts = user.information?[indexPath.section].rowImage.count
        amountOfGiftsLabel.text = user.information?[indexPath.section].rowName[indexPath.row]
        giftImageView1.image = user.information?[indexPath.section].rowImage[Int(arc4random_uniform(UInt32(amountOfGifts!)))]
        giftImageView2.image = user.information?[indexPath.section].rowImage[Int(arc4random_uniform(UInt32(amountOfGifts!)))]
        giftImageView3.image = user.information?[indexPath.section].rowImage[Int(arc4random_uniform(UInt32(amountOfGifts!)))]
        giftImageView4.image = user.information?[indexPath.section].rowImage[Int(arc4random_uniform(UInt32(amountOfGifts!)))]
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
