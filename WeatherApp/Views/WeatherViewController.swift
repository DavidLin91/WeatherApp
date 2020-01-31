//
//  WeatherVC.swift
//  WeatherApp
//
//  Created by David Lin on 1/31/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    private let weatherVC = WeatherView()
    
    
    override func loadView() {
        view = weatherVC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
    



}
