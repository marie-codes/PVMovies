//
//  ShowViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/13/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {
    
    // MARK: Life cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Add bar button items to navigation item
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "SettingsIcon"), style: .plain, target: self, action: #selector(showSettingsSideMenu))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "SearchIcon"), style: .plain, target: self, action: #selector(showSearch))
    }
    
    // MARK: Actions
    
    func showSettingsSideMenu() {
        let settingsSideMenuNavigationController = SettingsSideMenuNavigationController(rootViewController: SettingsSideMenuViewController())
        self.navigationController?.present(settingsSideMenuNavigationController, animated: true)
    }
    
    func showSearch() {
        
    }
}
