//
//  BaseController.swift
//  Workout App
//
//  Created by Темирлан Кудайберген on 09.04.2023.
//

import UIKit

class BaseController: UIViewController {
    
//    MARK: Lifecyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

@objc extension BaseController {
    
    func addViews() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
}
