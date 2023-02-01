//
//  UITabBarController.swift
//  Navigation
//
//  Created by Николай Гринько on 30.01.2023.
//

import UIKit

final class UITabBarViewController: UITabBarController {
    private let profileVC = ProfileViewController()
    private let feedVC = FeedViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupConrollers()
    }
    
    private func setupConrollers() {
        let navigationController = UINavigationController(rootViewController: profileVC)
        feedVC.tabBarItem.title = "Профиль"
        feedVC.tabBarItem.image = UIImage(named: "Профиль")
        
        profileVC.tabBarItem.title = "Лента"
        profileVC.tabBarItem.image = UIImage(named: "Лента")
        
        viewControllers = [navigationController, feedVC]
    }
    
}




    
   
