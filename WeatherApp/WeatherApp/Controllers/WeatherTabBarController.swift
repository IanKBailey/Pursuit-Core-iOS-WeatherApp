//
//  WeatherTabBarControllerViewController.swift
//  WeatherApp
//
//  Created by Ian Bailey on 2/6/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class WeatherTabBarController: UITabBarController {

    
    private lazy var searchVC: MainViewController = {
        let viewController = MainViewController()
        viewController.tabBarItem = UITabBarItem(title:"Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), tag: 0)
        return viewController
    }()
    
    
    private lazy var favoritesVC: FavoritesImagesViewController = {
        let viewController = FavoritesImagesViewController()
        viewController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star.fill"), tag: 1)
        return viewController
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        viewControllers = [searchVC, favoritesVC]
    }
    

    

}
