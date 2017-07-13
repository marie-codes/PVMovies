//
//  DetailsView.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class DetailsView: UIView {

    // MARK: Subviews
    
    let cardView: UIView = {
        let cardView = UIView()
        cardView.backgroundColor = .white
        cardView.layer.shadowOpacity = 0.15
        cardView.layer.shadowOffset = CGSize(width: 2, height: 3)
        return cardView
    }()
    
    let topImageView: UIImageView = {
        let topImageView = UIImageView()
        topImageView.contentMode = .scaleAspectFit
        return topImageView
    }()
    
    // MARK: Initialization
    
    init(show: Show) {
        super.init(frame: .zero)
        setUp()
        display(show: show)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Add style
        
        backgroundColor = .backgroundGrey
        
        // Add subviews
        
        addSubview(cardView)
        addSubview(topImageView)
        
        // Define layout
        
        cardView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(76)
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview().inset(61)
        }
        
        topImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(250)
        }
    }
    
    // MARK: Display show
    
    func display(show: Show) {
        topImageView.image = show.wideImage
    }
}
