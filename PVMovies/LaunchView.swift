//
//  LaunchView.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class LaunchView: UIView {
    
    // MARK: Subviews
    
    let greyBackgroundView: UIView = {
        let greyBackgroundView = UIView()
        greyBackgroundView.backgroundColor = .backgroundGrey
        greyBackgroundView.alpha = 0
        return greyBackgroundView
    }()
    
    let launchLogoImageView: UIImageView = {
        let launchLogoImageView = UIImageView(image: #imageLiteral(resourceName: "LaunchLogo"))
        launchLogoImageView.contentMode = .scaleAspectFit
        return launchLogoImageView
    }()
    
    let movieDatabaseImageView: UIImageView = {
        let movieDatabaseImageView = UIImageView(image: #imageLiteral(resourceName: "MovieDatabaseBanner"))
        movieDatabaseImageView.contentMode = .scaleAspectFit
        return movieDatabaseImageView
    }()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Add style
        
        backgroundColor = .white
        
        // Add subviews
        
        addSubview(greyBackgroundView)
        addSubview(launchLogoImageView)
        addSubview(movieDatabaseImageView)
        
        // Define layout
        
        greyBackgroundView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        launchLogoImageView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(250)
            make.height.equalTo(300)
        }
        
        movieDatabaseImageView.snp.makeConstraints { (make) in
            make.top.equalTo(launchLogoImageView.snp.bottom)
            make.centerX.equalToSuperview().offset(UIScreen.main.bounds.width)
            make.width.equalTo(300)
        }
    }
    
    // MARK: Animation
    
    func animateLogo(completion: @escaping () -> Void) {
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.launchLogoImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.movieDatabaseImageView.transform = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
        })
        
        UIView.animate(withDuration: 0.3, delay: 1, options: .curveEaseIn, animations: {
            self.greyBackgroundView.alpha = 1
            self.launchLogoImageView.alpha = 0
            self.movieDatabaseImageView.alpha = 0
        }) { _ in
            completion()
        }
    }
}
