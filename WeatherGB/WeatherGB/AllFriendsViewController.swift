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

        
    
    let friendsSearch = [
        friendsList(imageFriend: UIImage.init(named:"pngegg"), nameFriend: "fghgf"),
        friendsList(imageFriend: UIImage.init(named: "2021-09-04 22-59-11_1630923467"), nameFriend: "eqweqw"),
        friendsList(imageFriend: UIImage.init(named: "IMG_4779"), nameFriend: "dew"),
        friendsList(imageFriend: UIImage.init(named: "IMG_1589"), nameFriend: "dasdqwe"),
    friendsList(imageFriend: nil, nameFriend: "rteter"),
    friendsList(imageFriend: nil, nameFriend: "wefew"),
    friendsList(imageFriend: nil, nameFriend: "eqw"),
    friendsList(imageFriend: nil, nameFriend: "dewt"),
    friendsList(imageFriend: nil, nameFriend: "12342"),
    friendsList(imageFriend: nil, nameFriend: "eqe"),
    friendsList(imageFriend: nil, nameFriend: "dqe"),
    friendsList(imageFriend: nil, nameFriend: "asd"),
    friendsList(imageFriend: nil, nameFriend: "Asd"),
    friendsList(imageFriend: nil, nameFriend: "Max")

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
        friendsSearch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allFriends", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.image = friendsSearch[indexPath.row].image
        
        
        cell.contentConfiguration = content
        return cell
    }
    
    
}
