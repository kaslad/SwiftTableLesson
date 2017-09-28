//
//  FollowTableViewController.swift
//  VK2
//
//  Created by Владислав Каширин on 26.09.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class FollowTableViewController: UITableViewController {
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
        let refreshControl = UIRefreshControl()
        
        tableView.refreshControl = refreshControl
        
        prepareUsers()
        let nib = UINib(nibName: "FollowersTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func prepareUsers(){
        for i in 0 ..< 25{
            let user = User(fromName: arrayOfNames[random(withMaxNumber: arrayOfNames.count)], fromSurname: arrayOfSurnames[random(withMaxNumber: arrayOfSurnames.count)], fromOnlineStatus: arrayOfOnlineStatuses[random(withMaxNumber: arrayOfOnlineStatuses.count)], fromAvatar: arrayOfAvatars[random(withMaxNumber: arrayOfAvatars.count)])
            users.append(user)
            
            
        }
    }
    func random(withMaxNumber maxNumber: Int) -> Int{
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        
        // Configure the cell...
        
        return cell

            }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
