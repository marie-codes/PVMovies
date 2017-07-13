//
//  LaunchViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    
    // MARK: View
    
    var launchView: LaunchView!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchView = LaunchView(frame: view.frame)
        view = launchView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.launchView.animateLogo {
                (UIApplication.shared.delegate as? AppDelegate)?.setUpMainApp()
            }
        }
    }
}
