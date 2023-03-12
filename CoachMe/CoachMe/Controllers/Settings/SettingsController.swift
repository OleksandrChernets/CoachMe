//
//  SettingsController.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 10.03.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Settings"
        navigationController?.title = Resources.Strings.TabBar.settings
        
    }
    

}
