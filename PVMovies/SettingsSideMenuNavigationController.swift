//
//  SettingsSideMenuNavigationController.swift
//  PVMovies
//
//  Created by Marie Park on 7/13/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SideMenu
import UIKit

class SettingsSideMenuNavigationController: UISideMenuNavigationController {

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        isNavigationBarHidden = true
        leftSide = true
        SideMenuManager.menuLeftNavigationController = self
        
    }
}
