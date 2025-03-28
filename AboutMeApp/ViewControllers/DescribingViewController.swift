//
//  DescribingViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 28.03.2025.
//

import UIKit

final class DescribingViewController: UIViewController {
    
    @IBOutlet weak var describingLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.title = user.person.fullName
        setupGradient()
        
        describingLabel.text = user.person.introduce
        
        navigationItem.title = "\(user.person.name) \(user.person.surname) Bio"
    }
    
}
