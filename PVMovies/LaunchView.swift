//
//  LaunchView.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class LaunchView: UIView {

    // MARK: Animation
    
    func animateLogo(completion: @escaping () -> Void) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: { 
            
            self.layoutIfNeeded()
        }) { _ in
            completion()
        }
    }
}
