//
//  ProgressController.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 10.03.2023.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Workout Progress"
        navigationController?.title = Resources.Strings.TabBar.progress
        
        addNavigationBarButton(at: .left, with: "Export")
        addNavigationBarButton(at: .right, with: "Details")
    }
    

}
