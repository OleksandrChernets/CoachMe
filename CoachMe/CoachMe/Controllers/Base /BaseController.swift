//
//  ViewController.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 09.03.2023.
//

import UIKit


enum NavigationBarPosition {
    case left
    case right
}
class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
    }


}


@objc extension BaseController {
    
    func addView() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resources.Colors.background
        
    }
    
    func navBarLeftButtonHandler() {
        view.backgroundColor = Resources.Colors.background
        print("navBar left  button tapped")
    }
    
    func navBarRightButtonHandler() {
        view.backgroundColor = Resources.Colors.background
        print("navBar right button tapped")
    }
    
}
extension BaseController {
    func addNavigationBarButton(at position: NavigationBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inActive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        
        switch position {
            
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
