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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "SettingsIcon"), style: .plain, target: self, action: #selector(showSettingsSlideOutMenu))
    }
    
    func showSettingsSlideOutMenu() {
        
    }
}
