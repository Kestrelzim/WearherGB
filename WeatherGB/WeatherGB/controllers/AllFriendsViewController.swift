//
//  AllFriendsViewController.swift
//  WeatherGB
//
//  Created by Aleksy on 26.05.2022.
//

import UIKit

class AllFriendsViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
        
        }

    }

        
    
    let friendsMatch = [
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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension AllFriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendsMatch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allFriends", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.image = friendsMatch[indexPath.row].image
        
        
        cell.contentConfiguration = content
        return cell
    }
    
    
}
