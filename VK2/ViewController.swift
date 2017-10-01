//
//  ViewController.swift
//  VK2
//
//  Created by Владислав Каширин on 17.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ageAndCityLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeButton: UIButton!
    @IBOutlet weak var avatarUiImageView: UIImageView!
    @IBOutlet weak var followersButton: UIButton!
    @IBOutlet weak var friendsButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var groupButton: UIButton!
    @IBOutlet weak var photosButton: UIButton!
    
    let arrayOfNames: Array<String> = ["Влад","Nikita","Петя"]
    let arrayOfCities: Array<String> =
        ["Казань", "Иркутск"]
    let maxRandomNumber = 200
    let maxYears = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        avatarUiImageView.layer.cornerRadius = avatarUiImageView.frame.size.width / 2
        avatarUiImageView.clipsToBounds = true
        fillMainPageUserInformationWithValues()
    }
    func fillMainPageUserInformationWithValues(){
        var randomNumber = Int(arc4random_uniform(UInt32(maxRandomNumber)))
        videoButton.setTitle(String(randomNumber) + "\nвидео", for: .normal)
        randomNumber = Int(arc4random_uniform(UInt32(maxRandomNumber)))
        groupButton.setTitle(String(randomNumber) + "\nгрупп", for: .normal)
        randomNumber = Int(arc4random_uniform(UInt32(maxRandomNumber)))
        followersButton.setTitle(String(randomNumber) + "\nподписчиков", for: .normal)
        randomNumber = Int(arc4random_uniform(UInt32(maxRandomNumber)))
        photosButton.setTitle(String(randomNumber) + "\nфото", for: .normal)
        randomNumber = Int(arc4random_uniform(UInt32(maxRandomNumber)))
        friendsButton.setTitle(String(randomNumber) + "\nдруга", for: .normal)
        randomNumber = Int(arc4random_uniform(UInt32(arrayOfNames.count)))
        self.navigationItem.title = arrayOfNames[randomNumber]
        nameLabel.text = arrayOfNames[randomNumber]
        randomNumber = Int(arc4random_uniform(UInt32(maxYears)))
        let stringToShow : String = String(randomNumber)
        randomNumber = Int(arc4random_uniform(UInt32(arrayOfCities.count)))
        ageAndCityLabel.text = stringToShow + ", " + String(arrayOfCities[randomNumber])
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

