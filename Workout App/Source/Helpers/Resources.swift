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
        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#EBECEF")
        static var titleGray = UIColor(hexString: "#545C77")
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
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
