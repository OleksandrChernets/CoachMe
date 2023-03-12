//
//  SessionController.swift
//  CoachMe
//
//  Created by Alexandr Chernets on 10.03.2023.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "High Intensity Cardio"
        navigationController?.title = Resources.Strings.TabBar.session
        
        addNavigationBarButton(at: .left, with: "Pause")
        addNavigationBarButton(at: .right, with: "Finish")
    }
    

}
