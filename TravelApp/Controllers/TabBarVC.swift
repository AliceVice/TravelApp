//
//  TabBarVC.swift
//  TravelApp
//
//  Created by Andrei Isayenka on 14/01/2025.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureControllers()
    }
    
    private func configureControllers() {
        
        let vc1 = TravelVC()
        let vc2 = WishesVC()
        
        vc1.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc2.tabBarItem.image = UIImage(systemName: "heart")
        
        vc1.tabBarItem.title = "Search"
        vc2.tabBarItem.title = "Wishes"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemGray6
        
        setViewControllers([nav1, nav2], animated: true)
    }

}
