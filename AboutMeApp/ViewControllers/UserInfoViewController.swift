//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 27.03.2025.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var describingLAbel: UILabel!
    
    @IBOutlet weak var personImage: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradient()
        
        describingLAbel.text = user.person.describing
        
        personImage.image = UIImage(named: user.person.image)
        
        personImage.clipsToBounds = true
        
        navigationItem.title = user.person.fullName
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let describingVC = segue.destination as? DescribingViewController {
            describingVC.user = self.user
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        personImage.layoutIfNeeded()
        personImage.layer.cornerRadius = personImage.frame.width / 2
    }
}
    

