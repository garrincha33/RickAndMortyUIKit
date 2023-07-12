//
//  HomeTabBarController.swift
//  RickAndMortyUIKit
//
//  Created by Richard Price on 10/07/2023.
//

import UIKit

class HomeTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        setupTabBar()
    }
    
    private func setupTabBar() {
        viewControllers = [
        generateNavController(with: ViewController(), title: "Characters", image: "multiply.circle.fill"),
        generateNavController(with: UIViewController(), title: "Info", image: "multiply.circle.fill"),
        generateNavController(with: UIViewController(), title: "People", image: "multiply.circle.fill"),
        
        ]
    }
    
    private func setupUI() {
       
    }
    
    private func generateNavController(with rootViewController: UIViewController, title: String, image: String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: image)
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.title = title
        return navController
    }
}
