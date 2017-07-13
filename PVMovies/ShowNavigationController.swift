//
//  ShowNavigationController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class ShowNavigationController: UINavigationController {

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
     
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Remove navigation bar drop shadow
        
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        
        
    }
}
