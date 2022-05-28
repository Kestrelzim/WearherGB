//
//  FriendsTable.swift
//  WeatherGB
//
//  Created by Aleksy on 25.05.2022.
//

import UIKit

class FriendsTable: UITableViewController {

    
    @IBAction func addSelectFriend(segue: UIStoryboardSegue) {
       if let sourceVC = segue.source as? AllFriendsViewController,
          let indexPath = sourceVC.tableView.indexPathForSelectedRow {
           let friend = sourceVC.friendsSearch[indexPath.row]
           if !friendsMatch.contains(where: {$0.name == friend.name}) {
           friendsMatch.append(friend)
            tableView.reloadData()
           }
       }
           
        segue.destination
    }
    
    var friendsMatch = [
        friendsList(imageFriend: UIImage.init(named:"pngegg"), nameFriend: "Malkolm"),
        friendsList(imageFriend: UIImage.init(named: "2021-09-04 22-59-11_1630923467"), nameFriend: "Nasty"),
        friendsList(imageFriend: UIImage.init(named: "png-transparent-cloud-cover-weather-rain-cloudy-weather-cloud-computer-wallpaper-fictional-character"), nameFriend: "Vik"),
        friendsList(imageFriend: UIImage.init(named: "IMG_4779"), nameFriend: "Alex"),
        friendsList(imageFriend: UIImage.init(named: "IMG_1589"), nameFriend: "Dok"),
    friendsList(imageFriend: nil, nameFriend: "Aleksey"),
    friendsList(imageFriend: nil, nameFriend: "Mart"),
    friendsList(imageFriend: nil, nameFriend: "Sultan"),
    friendsList(imageFriend: nil, nameFriend: "Predat"),
    friendsList(imageFriend: nil, nameFriend: "Max"),
    friendsList(imageFriend: nil, nameFriend: "Borod"),
    friendsList(imageFriend: nil, nameFriend: "Something"),
    friendsList(imageFriend: nil, nameFriend: "Int"),
    friendsList(imageFriend: nil, nameFriend: "the"),
    friendsList(imageFriend: nil, nameFriend: "Way")

    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friendsMatch.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as? Friend else { preconditionFailure("Error")}

        cell.nameFriend.text = friendsMatch[indexPath.row].name
        cell.avatarFriend.image = friendsMatch[indexPath.row].image
        
        
        print(indexPath.section)
        print(indexPath.row)
        // Configure the cell...

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPhoto",
           let destinationVC = segue.destination as? GalleryCollection,
           let indexPath = tableView.indexPathForSelectedRow {
            let friend = friendsMatch[indexPath.row].name
            destinationVC.title = friend
        }
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

