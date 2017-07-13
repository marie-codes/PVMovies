//
//  CardTableViewCell.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import SnapKit
import UIKit

class CardTableViewCell: UITableViewCell {

    // MARK: Reuse identifier
    
    static let reuseID = "CardTableViewCell"
    
    // MARK: Subviews
    
    let cardView: UIView = {
        let cardView = UIView()
        cardView.backgroundColor = .white
        cardView.layer.shadowOpacity = 0.15
//        cardView.layer.shadowRadius = 4
        cardView.layer.shadowOffset = CGSize(width: 2, height: 3)
        return cardView
    }()
    
    let leftImageView: UIImageView = {
        let leftImageView = UIImageView()
        leftImageView.backgroundColor = .darkBlue
        return leftImageView
    }()
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Title"
        titleLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 20)
        return titleLabel
    }()
    
    let ratingLabel: UILabel = {
        let ratingLabel = UILabel()
        ratingLabel.text = "10.0"
        return ratingLabel
    }()
    
    // TODO: Add to view hierarchy
    
    let ratingStarImageView: UIImageView = {
        let ratingStarImageView = UIImageView()
        return ratingStarImageView
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
        cardView.addSubview(leftImageView)
        cardView.addSubview(titleLabel)
        
        // Define layout
        
        cardView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalToSuperview().inset(10)
            make.height.equalToSuperview().inset(5)
        }
        
        leftImageView.snp.makeConstraints { (make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.4)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(16)
            make.left.equalTo(leftImageView.snp.right).offset(14)
        }
        
        ratingLabel.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
        ratingLabel.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
        ratingLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(16)
            make.left.equalTo(titleLabel.snp.right).offset(14)
        }
    }
}
