//
//  TabBarController.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 09.03.2023.
//



import UIKit


enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}


final class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        congfigure()
    }
 
    
    private func congfigure() {
        
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavigationBarController(rootViewController: overviewController)
        let sessionNavigation = NavigationBarController(rootViewController: sessionController)
        let progressNavigation = NavigationBarController(rootViewController: progressController)
        let settingsNavigation = NavigationBarController(rootViewController: settingsController)
        
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                    image: Resources.Images.TabBar.session,
                                                    tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings .rawValue)
        
        
        setViewControllers([overviewNavigation, sessionNavigation, progressNavigation, settingsNavigation], animated: false)
    }
    
}
