//
//  AppDelegate.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: Main window
    
    var window: UIWindow?
    
    // MARK: Main app
    
    func setUpMainApp() {
        guard let mainAppController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() else {
            print("An error occurred while setting up the main app after launch.")
            return
        }
        window?.rootViewController?.present(mainAppController, animated: true) {
            self.window?.rootViewController = mainAppController
        }
    }
}

