//
//  Resources.swift
//  Workout App
//
//  Created by Темирлан Кудайберген on 09.04.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#EBECEF")
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var sessions = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview")
            static var sessions = UIImage(named: "session")
            static var progress = UIImage(named: "progress")
            static var settings = UIImage(named: "settings")
        }
    }
}
