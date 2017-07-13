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
        
        // Register table view cell type
        
        register(CardTableViewCell.self, forCellReuseIdentifier: CardTableViewCell.reuseID)
        
        // Add style
        
        separatorStyle = .none
        backgroundColor = .clear
        
        // Define layout
        
        rowHeight = 210
        contentInset.top = 6
        contentOffset.y = -6
    }
}
