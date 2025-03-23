//
//  ViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 23.03.2025.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    private let login = "111"
    private let password = "222"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
    }
    
    @IBAction func logInButtonAction() {
        
        fieldСhecking()
        
        performSegue(withIdentifier: "showGreeting", sender: nil)
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "Oops!", and: " Your name is 111")
    }
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Hey!", and: " Your password is 222")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController,
              let userName = userNameTextField.text else {return}
        greetingVC.userLabel = userName
    }
}


    // Mark: - show Alert settings
extension MainViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    // Mark: - Checking fields for validity
    private func fieldСhecking() {
        
        guard let userName = userNameTextField.text,
              !userName.isEmpty,
              userName == login
        else {
            showAlert(with: "Invalid login or password",
                      and: "Please enter correct login and password")
            return
        }
        
        guard let passwordTF = passwordTextField.text,
              !passwordTF.isEmpty,
              passwordTF == password
        else {
            showAlert(with: "Invalid login or password",
                      and: "Please enter correct login and password")
            return
        }
    }
}

// MARK: - Hide keyboard on tap
extension MainViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let touch = touches.first {
            let currentPoint = touch.location(in: self.view)
            
            if userNameTextField.frame.contains(currentPoint) || passwordTextField.frame.contains(currentPoint) {
        
                return
            }
            
            view.endEditing(true)
        }
    }
}



