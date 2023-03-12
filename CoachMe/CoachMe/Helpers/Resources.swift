//
//  Resources.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 09.03.2023.
//

import UIKit

enum Resources {
    
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
        static var background = UIColor(hexString: "#F8F9F9")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview")
            static let session = UIImage(named: "session")
            static let progress = UIImage(named: "progress")
            static let settings = UIImage(named: "settings")
        }
    }
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

