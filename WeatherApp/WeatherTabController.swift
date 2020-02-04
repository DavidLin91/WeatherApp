//
//  WeatherTabController.swift
//  WeatherApp
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class WeatherTabController: UITabBarController {

    private lazy var weatherVC: WeatherViewController = {
        let viewcontroller = WeatherViewController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud"), tag: 0)
        return viewcontroller
    }()
    
    private lazy var favoritesVC: FavoritesViewController = {
        let favoritesStoryboard = UIStoryboard(name: "Favorites", bundle: nil)
        guard let viewcontroller = favoritesStoryboard.instantiateViewController(identifier: "FavoritesViewController") as? FavoritesViewController else {
        fatalError("could not load FavoritesViewController")
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart"), tag: 1)
        return viewcontroller
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [weatherVC, favoritesVC]
    }

}
