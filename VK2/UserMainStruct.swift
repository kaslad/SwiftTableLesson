//
//  UserMainStruct.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit
struct User{
    var name : String
    var onlineStatus : String
    var avatar : UIImage
    var photos : [UIImage]?
    var information : MainUserInformation?
    var surname : String
    var textStatus : String?
    var contacts : Contacts?
    var career : Career?
    var education : Education?
    var amountOfGifts : Int?
    var amountOfPages : Int?
    var amountOfNotes : Int?
    var amountOfDocuments : Int?
    init(fromName name: String,fromSurname surname:String, fromOnlineStatus onlineStatus : String,
         fromAvatar avatar : UIImage){
        self.init(fromName: name, fromSurname: surname, fromOnlineStatus: onlineStatus, fromAvatar: avatar, fromPhotos: [], fromInformation: nil , fromTextStatus: nil, fromContacts: nil, fromCareer: nil, fromEducation: nil, fromAmountOfGifts: nil, fromAmountOfPages: nil, fromAmountOfNotes: nil, fromAmountOfDocuments: nil)
    }
    init(fromName name: String,fromSurname surname:String, fromOnlineStatus onlineStatus : String,
         fromAvatar avatar : UIImage, fromPhotos photos : [UIImage], fromInformation information : MainUserInformation?, fromTextStatus textStatus : String?, fromContacts contacts : Contacts?, fromCareer career : Career?, fromEducation education : Education?, fromAmountOfGifts amountOfGifts : Int?, fromAmountOfPages amountOfPages : Int?, fromAmountOfNotes amountOfNotes : Int?, fromAmountOfDocuments amountOfDocuments : Int?
        ){
        self.name = name
        self.surname = surname
        self.onlineStatus = onlineStatus
        self.avatar = avatar
        self.photos = photos
        self.information = information
        
        self.textStatus = textStatus
        self.avatar = avatar
        self.contacts = contacts
        self.career = career
        self.education = education
        self.amountOfGifts = amountOfGifts
        self.amountOfPages = amountOfPages
        self.amountOfNotes = amountOfNotes
        self.amountOfDocuments = amountOfDocuments
        
    }
    
}
