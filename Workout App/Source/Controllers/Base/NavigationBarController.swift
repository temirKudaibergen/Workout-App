//
//  NavigationBarController.swift
//  Workout App
//
//  Created by Темирлан Кудайберген on 09.04.2023.
//

import UIKit

final class NavigationBarController: UINavigationController {
    
//    MARK: Lifecyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
//    MARK: Setup
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
}
