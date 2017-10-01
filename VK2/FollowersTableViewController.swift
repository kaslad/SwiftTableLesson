//
//  FollowersTableViewController.swift
//  VK2
//
//  Created by Владислав Каширин on 22.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit


class FollowersTableViewController: UITableViewController {
    let amountOfFollowers = 30
    
    let arrayOfNames: Array<String> = ["Влад","Nikita","Петя"]
    let arrayOfSurnames: Array<String> = ["Копин", "Булин", "Пупкин"]
    let arrayOfCities: Array<String> =
        ["Казань", "Иркутск"]
    let arrayOfOnlineStatuses: Array<String> = ["pc","mobile", "offline"]
    let arrayOfAvatars: Array<UIImage> = [#imageLiteral(resourceName: "Photo1"),#imageLiteral(resourceName: "Photo4"), #imageLiteral(resourceName: "Photo3"), #imageLiteral(resourceName: "Photo2")]
    let maxRandomNumber = 200
    let maxYears = 50
    var users = [User]()
    fileprivate let cellIdentifier = "FollowersTableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Подписчики"
        prepareUsers()
        let nib = UINib(nibName: "FollowersTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
    }
    func prepareUsers() {
        for i in 0 ..< 25{
            let user = User(fromName: arrayOfNames[random(withMaxNumber: arrayOfNames.count)], fromSurname: arrayOfSurnames[random(withMaxNumber: arrayOfSurnames.count)], fromOnlineStatus: arrayOfOnlineStatuses[random(withMaxNumber: arrayOfOnlineStatuses.count)], fromAvatar: arrayOfAvatars[random(withMaxNumber: arrayOfAvatars.count)])
            users.append(user)
            }
    }
    func random(withMaxNumber maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FollowersTableViewCell
        let model = users[indexPath.row]
        cell.prepareCell(with: model)
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
}
