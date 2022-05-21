//
//  LoginViewController.swift
//  WeatherGB
//
//  Created by Aleksy on 18.05.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
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
    
    
    @IBAction func loginButton(_ sender: Any) {
        guard let login = loginField.text,
              let password = passwordField.text
        else {return}
            
        
        if  login == "",
            password == "" {
              loginField.backgroundColor = .green
                passwordField.backgroundColor = .green
        performSegue(withIdentifier: "firstScreen", sender: nil)
        }
        else {
                loginField.backgroundColor = .red
                    passwordField.backgroundColor = .red
                    return
                }
    }

}
