//
//  CardDisplayView.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class CardDisplayView: UIView {

    // MARK: Subviews
    
    let cardTableView = CardTableView()
    
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
        
        backgroundColor = .backgroundGrey
        
        // Add subviews
        
        addSubview(cardTableView)
        
        // Define layout
        
        cardTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}

