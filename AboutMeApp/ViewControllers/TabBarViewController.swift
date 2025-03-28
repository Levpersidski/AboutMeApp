//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by SWIFT on 28.03.2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBAppearance = UITabBarAppearance()
        tabBAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBAppearance
        tabBar.scrollEdgeAppearance = tabBAppearance
    }

}
