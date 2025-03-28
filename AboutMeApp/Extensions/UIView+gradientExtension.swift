//
//  UIView+gradientExtension.swift
//  AboutMeApp
//
//  Created by SWIFT on 28.03.2025.
//

import UIKit



extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
       
        let gradient = CAGradientLayer()
        gradient.name = "VerticalGradient"
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
    
    func updateGradientFrame() {
        layer.sublayers?.forEach {
            if $0.name == "VerticalGradient" {
                $0.frame = bounds
            }
        }
    }
    
    
}

extension UIColor {
    static let gradientPrimary = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    static let gradientSecondary = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
}

extension UIViewController {
    
      func setupGradient() {
        view.addVerticalGradientLayer(
            topColor: .gradientPrimary,
            bottomColor: .gradientSecondary
        )
    }
}

