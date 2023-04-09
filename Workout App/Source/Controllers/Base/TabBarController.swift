//
//  TabBarController.swift
//  Workout App
//
//  Created by Темирлан Кудайберген on 09.04.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case sessions
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
//    MARK: Lifecyle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configuer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    MARK: Setup
    
    private func configuer() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionsController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavigationBarController(rootViewController: overviewController)
        let sessionNavigation = NavigationBarController(rootViewController: sessionController)
        let progressNavigation = NavigationBarController(rootViewController: progressController)
        let settingsNavigation = NavigationBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.sessions,
                                                     image: Resources.Images.TabBar.sessions,
                                                     tag: Tabs.sessions.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigation,
                            sessionNavigation,
                            progressNavigation,
                            settingsNavigation], animated: false)
    }
}
