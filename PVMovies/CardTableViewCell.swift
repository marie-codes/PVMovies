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
        titleLabel.text = "This is title but it is dumb and long"
        titleLabel.numberOfLines = 2
        titleLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        return titleLabel
    }()
    
    let ratingLabel: UILabel = {
        let ratingLabel = UILabel()
        ratingLabel.text = "10.0"
        ratingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        return ratingLabel
    }()
    
    let ratingStarImageView: UIImageView = {
        let ratingStarImageView = UIImageView(image: #imageLiteral(resourceName: "StarIcon"))
        ratingStarImageView.contentMode = .scaleAspectFit
        return ratingStarImageView
    }()
    
    let releaseDateCalendarImageView: UIImageView = {
        let releaseDateCalendarImageView = UIImageView(image: #imageLiteral(resourceName: "CalendarIcon").withRenderingMode(.alwaysTemplate))
        releaseDateCalendarImageView.tintColor = .detailGrey
        releaseDateCalendarImageView.contentMode = .scaleAspectFit
        return releaseDateCalendarImageView
    }()
    
    let releaseDateLabel: UILabel = {
        let releaseDateLabel = UILabel()
        releaseDateLabel.text = "2017"
        releaseDateLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        releaseDateLabel.textColor = .detailGrey
        return releaseDateLabel
    }()
    
    let genreLabel: UILabel = {
        let genreLabel = UILabel()
        genreLabel.text = "Comedy"
        genreLabel.textAlignment = .right
        genreLabel.font = UIFont(name: "SourceSansPro-It", size: 12)
        genreLabel.textColor = .detailGrey
        return genreLabel
    }()
    
    let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.text = "This is a description, not a good one but maybe better than some? Not sure. This is a description, not a good one but maybe better than some? Not sure. This is a description, not a good one but maybe better than some? Not sure. This is a description, not a good one but maybe better than some? Not sure. This is a description, not a good one but maybe better than some? Not sure. This is a description, not a good one but maybe better than some? Not sure."
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont(name: "SourceSansPro-Light", size: 11)
        return descriptionLabel
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
        cardView.addSubview(ratingLabel)
        cardView.addSubview(ratingStarImageView)
        cardView.addSubview(descriptionLabel)
        cardView.addSubview(releaseDateCalendarImageView)
        cardView.addSubview(releaseDateLabel)
        cardView.addSubview(genreLabel)
        
        // Define layout
        
        cardView.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalToSuperview().inset(12)
            make.height.equalToSuperview().inset(6)
        }
        
        leftImageView.snp.makeConstraints { (make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.38)
        }
        
        titleLabel.setContentHuggingPriority(UILayoutPriorityRequired, for: .vertical)
        titleLabel.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .vertical)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(10)
            make.left.equalTo(leftImageView.snp.right).offset(12)
        }
        
        ratingLabel.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
        ratingLabel.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
        ratingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel)
            make.left.equalTo(titleLabel.snp.right).offset(10)
        }
        
        ratingStarImageView.snp.makeConstraints { (make) in
            make.left.equalTo(ratingLabel.snp.right).offset(4)
            make.right.equalToSuperview().inset(11)
            make.centerY.equalTo(ratingLabel)
            make.size.equalTo(12)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(9)
            make.left.equalTo(titleLabel)
            make.right.equalToSuperview().inset(14)
        }
        
        releaseDateCalendarImageView.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(16)
            make.left.equalTo(descriptionLabel)
            make.bottom.equalToSuperview().inset(14)
            make.size.equalTo(12)
        }
        
        releaseDateLabel.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
        releaseDateLabel.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
        releaseDateLabel.snp.makeConstraints { (make) in
            make.left.equalTo(releaseDateCalendarImageView.snp.right).offset(5)
            make.centerY.equalTo(releaseDateCalendarImageView)
        }
        
        genreLabel.snp.makeConstraints { (make) in
            make.left.lessThanOrEqualTo(releaseDateLabel.snp.right).offset(10)
            make.right.equalTo(ratingStarImageView)
            make.centerY.equalTo(releaseDateLabel)
        }
    }
}
