//
//  CardTableView.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class CardTableView: UITableView {

    // MARK: Initialization
    
    init() {
        super.init(frame: .zero, style: .plain)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Register table view cell types
        
        register(CardHeaderTableViewCell.self, forCellReuseIdentifier: CardHeaderTableViewCell.reuseID)
        register(CardTableViewCell.self, forCellReuseIdentifier: CardTableViewCell.reuseID)
        
        // Add style
        
        separatorStyle = .none
        backgroundColor = .clear
        
        // Define insets
        
        contentInset.top = 6
        contentInset.bottom = 6
        contentOffset.y = -6
    }
}
