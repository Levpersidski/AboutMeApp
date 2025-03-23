//
//  GreetingViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 23.03.2025.
//

import UIKit

final class GreetingViewController: UIViewController {
    
    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    var userLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = ("Welcome, \(userLabel ?? "")")
        
        let colors = [UIColor.white, UIColor.blue, UIColor.red]
        view.applyGradient(colors: colors)
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}

// Mark: - Gradient color ex.
extension UIView {
    func applyGradient(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}


