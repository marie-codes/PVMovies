//
//  ShowNavigationController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class ShowNavigationController: UINavigationController {

    // MARK: Status bar
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    let statusBarBackgroundView: UIView = {
        let statusBarBackgroundView = UIView()
        statusBarBackgroundView.backgroundColor = .black
        return statusBarBackgroundView
    }()
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Add status bar background to navigation bar
        
        view.addSubview(statusBarBackgroundView)
        statusBarBackgroundView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(UIApplication.shared.statusBarFrame.height)
        }
        
        // Change navigation bar tint color and remove drop shadow
        
        navigationBar.tintColor = .white
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        
        // Add gradient background to navigation bar
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = navigationBar.layer.bounds
        gradientLayer.colors = [UIColor.darkGreen.cgColor, UIColor.darkBlue.cgColor]
        navigationBar.layer.addSublayer(gradientLayer)
    }
}
