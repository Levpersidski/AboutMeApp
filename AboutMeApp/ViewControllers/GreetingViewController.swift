//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 23.03.2025.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet weak var welcomeUserLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        setupLabel()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.updateGradientFrame()
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
   
}

extension GreetingViewController {
    
    private func setupLabel() {
        welcomeUserLabel.text = """
        Welcome, \(user.login)!
        My name is \(user.person.fullName)
        """
        welcomeUserLabel.textColor = .white
        welcomeUserLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
    }
}
