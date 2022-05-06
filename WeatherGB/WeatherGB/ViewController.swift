//
//  ViewController.swift
//  WeatherGB
//
//  Created by Aleksy on 02.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loginInput: UITextField!
    
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var loginButtomPressed: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        let login = loginInput.text !
//        let password = passwordInput.text !
//
//        if login == "" && password == "" {
//            return true
//        } else {
//            return false
//        }
//}

//    @objc func keyboardWasShow (notification: Notification) {
//        let info = notification.userInfo! as NSDictionary
//        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue) .cgRectValue.size
//        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
//
//        self.scrollView?.contentInset = contentInsets
//        scrollView?.scrollIndicatorInsets() = contentInsets
//    }
//
}
