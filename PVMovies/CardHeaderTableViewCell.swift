//
//  CardHeaderTableViewCell.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class CardHeaderTableViewCell: UITableViewCell {

    // MARK: Reuse identifier
    
    static let reuseID = "CardHeaderTableViewCell"
    
    // MARK: Subviews
    
    let cardView: UIView = {
        let cardView = UIView()
        cardView.backgroundColor = .white
        cardView.layer.shadowOpacity = 0.15
        cardView.layer.shadowOffset = CGSize(width: 2, height: 3)
        return cardView
    }()
    
    let topShowsImageView: UIImageView = {
        let topShowsImageView = UIImageView()
        topShowsImageView.contentMode = .scaleAspectFit
        return topShowsImageView
    }()
    
    // MARK: Initialization
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    // MARK: Set up
    
    func setUp() {
        
        // Add style
        
        selectionStyle = .none
        backgroundColor = .clear
        
        // Add subviews
        
        contentView.addSubview(cardView)
        cardView.addSubview(topShowsImageView)
        
        // Define layout
        
        cardView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalToSuperview().inset(12)
            make.height.equalToSuperview().inset(6)
        }
        
        topShowsImageView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}
