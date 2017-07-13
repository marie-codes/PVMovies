//
//  SettingsSideMenuViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/13/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class SettingsSideMenuViewController: UIViewController {

    // MARK: View
    
    var settingsSideMenuView: SettingsSideMenuView!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsSideMenuView = SettingsSideMenuView(frame: view.frame)
        view = settingsSideMenuView
    }
}
