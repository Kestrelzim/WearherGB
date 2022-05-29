//
//  GroupTableViewController.swift
//  WeatherGB
//
//  Created by Aleksy on 28.05.2022.
//

import UIKit

class GroupTableViewController: UITableViewController {

    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
    }
    
    var followGroup = [
        group.init(image: UIImage.init(systemName: "person.3.fill"), nameGroup: "APB", descrpition: "Продажа лекарственных средств", create: 2010), group.init(image: UIImage.init(systemName: "person.3.fill"), nameGroup: "Club221", descrpition: "Some times party, mostly nothing", create: 2000), group.init(image: UIImage.init(systemName: "person.3.fill"), nameGroup: "kinder", descrpition: "like tinder but for parents", create: 2006),group.init(image: UIImage.init(systemName: "person.3.fill"), nameGroup: "Quiz Squiz", descrpition: "Game like Jepardy, you know?", create: 2007)
    
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
        return followGroup.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? GroupTableViewCell else { preconditionFailure("Error")}
        
        cell.nameGroup.text = followGroup[indexPath.row].nameGroup
        cell.avatarGroup.image = followGroup[indexPath.row].image
        
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
