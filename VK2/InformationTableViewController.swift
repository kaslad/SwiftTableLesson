//
//  InformationTableViewController.swift
//  VK2
//
//  Created by Владислав Каширин on 27.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class InformationTableViewController: UITableViewController {
    @IBOutlet weak var HeaderView: UIView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    let mainInfoIdentifier = "mainInformationCell"
    let contactsIdentifier = "contactsCell"
    let careerIdentifier = "careerCell"
    let educationIdentifier = "educationCell"
    let interestsIdentifier = "interestsCell"
    let statusIdentifier = "StatusTableViewCell"
    let giftsIdentifier = "giftsCell"
    let labelIdentifier = "labelCell"
  
    
    var statusSection = 0
    var mainInformationSection = 1
    var contactsSection = 2
    var careerSection = 3
    var educationSection = 4
    var giftsSection = 5
    var interestsSection = 6
    var currentUser = 0
    
    let numberOfSections = 7
    let headerHeight: CGFloat = 20
    let headerPlainSectionHeight: CGFloat = 5
    
    let rowHeight: CGFloat = 55
    let giftSectionRowHeight: CGFloat = 100

    var users : [User] = [User(fromName: "Vlad", fromSurname: "Kok", fromOnlineStatus: "new", fromAvatar: #imageLiteral(resourceName: "Photo2"), fromInformation: [UserInformation(sectionName: "", rowName: ["Change status"], rowImage: [], rowFilling: []),UserInformation(sectionName: "", rowName: ["День рождения", "Семейное положение", "Языки", "Братья, сестры"], rowImage: [], rowFilling: ["24 января 1999", "холост", "spanish, english", "Костя Каш"]), UserInformation(sectionName: "Контакты", rowName: [], rowImage: [#imageLiteral(resourceName: "PhoneIcon"),#imageLiteral(resourceName: "HomeIcon"), #imageLiteral(resourceName: "VKIcon")], rowFilling: ["515322", "Kazan", "vk.com/kaslad"]), UserInformation(sectionName: "Карьера", rowName: ["KTA"], rowImage: [], rowFilling: ["tennis coach"]), UserInformation(sectionName: "Образование", rowName: ["Вуз", "Школа"], rowImage: [], rowFilling: ["КФУ (бывш. КГУ им. Ульянова-Ленина)", "Лицей ИГУ"]), UserInformation(sectionName: "", rowName: ["32 подарка"], rowImage: [#imageLiteral(resourceName: "Gift2"),#imageLiteral(resourceName: "Gift2"),#imageLiteral(resourceName: "Gift1"),#imageLiteral(resourceName: "Gift1")], rowFilling: []), UserInformation(sectionName: "", rowName: ["Интересные страницы", "Заметки", "Документы"], rowImage: [], rowFilling: ["222", "30", "7"])] ), User(fromName: "Vlad", fromSurname: "Kok", fromOnlineStatus: "new", fromAvatar: #imageLiteral(resourceName: "Photo2"), fromInformation: [UserInformation(sectionName: "", rowName: ["Live is the best"], rowImage: [], rowFilling: []),UserInformation(sectionName: "", rowName: ["День рождения", "Семейное положение", "Языки", "Братья, сестры"], rowImage: [], rowFilling: ["24 января 1997", "женат", "english", "Владос Кашапов"]), UserInformation(sectionName: "Контакты", rowName: [], rowImage: [#imageLiteral(resourceName: "PhoneIcon"),#imageLiteral(resourceName: "HomeIcon"), #imageLiteral(resourceName: "VKIcon")], rowFilling: ["522222", "irkutsk", "vk.com/kostya"]), UserInformation(sectionName: "Карьера", rowName: ["IOS LAB"], rowImage: [], rowFilling: ["developer"]), UserInformation(sectionName: "Образование", rowName: ["Вуз", "Школа"], rowImage: [], rowFilling: ["КФУ (бывш. КГУ им. Ульянова-Ленина)", "Лицей 38"]), UserInformation(sectionName: "", rowName: ["65 подарков"], rowImage: [#imageLiteral(resourceName: "Gift1"),#imageLiteral(resourceName: "Gift2"),#imageLiteral(resourceName: "Gift1"),#imageLiteral(resourceName: "Gift1")], rowFilling: []), UserInformation(sectionName: "", rowName: ["Интересные страницы", "Заметки", "Документы"], rowImage: [], rowFilling: ["2", "0", "6"])]
)]

    override func viewDidLoad() {
        super.viewDidLoad()
     avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width / 2
        avatarImageView.clipsToBounds = true
        registerNibs()
        setupRefreshControl()
        
    }
    func registerNibs() {
        let nib = UINib(nibName: "StatusTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: statusIdentifier)
        tableView.register(UINib(nibName: "MainInformationTableViewCell", bundle: nil), forCellReuseIdentifier: mainInfoIdentifier)
        tableView.register(UINib(nibName: "ContactsTableViewCell", bundle: nil), forCellReuseIdentifier: contactsIdentifier)
        tableView.register(UINib(nibName: "CareerTableViewCell", bundle: nil), forCellReuseIdentifier: careerIdentifier)
        tableView.register(UINib(nibName: "EducationTableViewCell", bundle: nil), forCellReuseIdentifier: educationIdentifier)
        tableView.register(UINib(nibName: "GiftsTableViewCell", bundle: nil), forCellReuseIdentifier: giftsIdentifier)
        tableView.register(UINib(nibName: "InterestsTableViewCell", bundle: nil), forCellReuseIdentifier: interestsIdentifier)
    }
    func setupRefreshControl() {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refreshTableView(sender:)), for: .valueChanged)
        tableView.refreshControl = refreshControl
    
    }
    func refreshTableView(sender: UIRefreshControl) {
        if currentUser == 0 {
            currentUser = 1
        }
        else{
            currentUser = 0
        }
        self.tableView.reloadData()
        sender.endRefreshing()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == statusSection {
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        if section == mainInformationSection {
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        if section == contactsSection{
            if let arrayCount =  users[currentUser].information?[section].rowFilling.count {
                return arrayCount
            }
        }
        if section == giftsSection{
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        if section == careerSection{
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        if section == interestsSection{
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        if section == educationSection{
            if let arrayCount =  users[currentUser].information?[section].rowName.count {
                return arrayCount
            }
        }
        return 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == statusSection{
            let cell = tableView.dequeueReusableCell(withIdentifier: statusIdentifier, for: indexPath) as! StatusTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell
        }
        if indexPath.section == mainInformationSection{
            let cell = tableView.dequeueReusableCell(withIdentifier:
                mainInfoIdentifier, for: indexPath) as! MainInformationTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell

        }
        if indexPath.section == giftsSection{
            let cell = tableView.dequeueReusableCell(withIdentifier:
                giftsIdentifier, for: indexPath) as! GiftsTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell
            
        }
        if indexPath.section == careerSection{
            let cell = tableView.dequeueReusableCell(withIdentifier:
                careerIdentifier, for: indexPath) as! CareerTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell
            
        }
        if indexPath.section == educationSection{
            let cell = tableView.dequeueReusableCell(withIdentifier:
                educationIdentifier, for: indexPath) as! EducationTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell
            
        }
        if indexPath.section == contactsSection {
            let cell = tableView.dequeueReusableCell(withIdentifier:
                contactsIdentifier, for: indexPath) as! ContactsTableViewCell
            cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)
            return cell
        }

        let cell = tableView.dequeueReusableCell(withIdentifier:
                interestsIdentifier, for: indexPath) as! InterestsTableViewCell
        cell.prepareCell(with: users[currentUser], cellForRowAt: indexPath)

            return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return users[currentUser].information?[section].sectionName
}
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == giftsSection{
            return giftSectionRowHeight
        }
        return rowHeight
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == statusSection || section == mainInformationSection || section == giftsSection || section == interestsSection ){
            return headerPlainSectionHeight
        }
        return headerHeight
    }
}


