//
//  SearchGroupTableViewController.swift
//  WeatherGB
//
//  Created by Aleksy on 29.05.2022.
//

import UIKit

class SearchGroupTableViewController: UITableViewController {

    
    var allGroups = [group]()
    
    func fill () {
        let newGroup1 = group.init(image: UIImage.init(systemName: "music.mic"), nameGroup: "Something", descrpition: "", create: 2000)
        let newGroup2 = group.init(image: UIImage(systemName: "music.mic"), nameGroup: "in the", descrpition: "", create: 2001)
        let newGroup3 = group.init(image: UIImage(systemName: "music.mic"), nameGroup: "way", descrpition: "", create: 2002)
        let newGroup4 = group.init(image: UIImage(systemName: "music.mic"), nameGroup: "Nirvana", descrpition: "", create: 2003)
        allGroups.append(newGroup1)
        allGroups.append(newGroup2)
        allGroups.append(newGroup3)
        allGroups.append(newGroup4)
    }
    
    
//    var unfollowoGroup = [group.init(image: UIImage.init(systemName: "music.mic"), nameGroup: "Something", descrpition: "", create: 2000), group.init(image: UIImage(systemName: "music.mic   "), nameGroup: "in the", descrpition: "", create: 2001), group.init(image: UIImage(systemName: "music.mic"), nameGroup: "way", descrpition: "", create: 2002), group.init(image: UIImage(systemName: "music.mic"), nameGroup: "Nirvana", descrpition: "", create: 2003)]
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fill()
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
        return allGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "searchinGroup", for: indexPath) as? SearchGroupTableViewCell else {preconditionFailure("Error")}

        
        cell.nameSearchGorup.text = allGroups[indexPath.row].nameGroup
        cell.avatarSearchGroup.image = allGroups[indexPath.row].image
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
