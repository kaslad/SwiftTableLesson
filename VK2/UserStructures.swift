//
//  UserStructures.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit
struct User{
    var name: String
    var surname: String
    var onlineStatus: String
    var avatar: UIImage
    var information: [UserInformation]? = nil
    
    init(fromName name: String, fromSurname surname: String, fromOnlineStatus onlineStatus: String,
         fromAvatar avatar: UIImage){
        self.name = name
        self.surname = surname
        self.onlineStatus = onlineStatus
        self.avatar = avatar
    }
    init(fromName name: String, fromSurname surname: String, fromOnlineStatus onlineStatus: String,
         fromAvatar avatar: UIImage, fromInformation information: [UserInformation]){
        self.name = name
        self.surname = surname
        self.onlineStatus = onlineStatus
        self.avatar = avatar
        self.information = information
    }
}
    struct UserInformation {
        var sectionName: String
        var rowName: [String]
        var rowImage: [UIImage]
        var rowFilling: [String]
}

