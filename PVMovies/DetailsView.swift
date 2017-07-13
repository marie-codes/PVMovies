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
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowRadius = 6
        cardView.layer.shadowOffset = CGSize(width: 2, height: 3)
        return cardView
    }()
    
    let topImageView: UIImageView = {
        let topImageView = UIImageView()
        topImageView.backgroundColor = .black
        return topImageView
    }()
    
    let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont(name: "SourceSansPro-Light", size: 11)
        return descriptionLabel
    }()
    
    let bottomContainerView: UIView = {
        let bottomContainerView = UIView()
        return bottomContainerView
    }()
    
    let dividerView: UIView = {
        let dividerView = UIView()
        dividerView.backgroundColor = .lightGray
        return dividerView
    }()
    
    let releaseDateLeadingLabel: UILabel = {
        let releaseDateLeadingLabel = UILabel()
        releaseDateLeadingLabel.text = "Release Date: "
        releaseDateLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        releaseDateLeadingLabel.textColor = .lightGreen
        return releaseDateLeadingLabel
    }()

    let releaseDateDataLabel: UILabel = {
        let releaseDateDataLabel = UILabel()
        releaseDateDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return releaseDateDataLabel
    }()
    
    let genreLeadingLabel: UILabel = {
        let genreLeadingLabel = UILabel()
        genreLeadingLabel.text = "Genre: "
        genreLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        genreLeadingLabel.textColor = .lightGreen
        return genreLeadingLabel
    }()
    
    let genreDataLabel: UILabel = {
        let genreDataLabel = UILabel()
        genreDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return genreDataLabel
    }()
    
    let budgetLeadingLabel: UILabel = {
        let budgetLeadingLabel = UILabel()
        budgetLeadingLabel.text = "Budget: "
        budgetLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        budgetLeadingLabel.textColor = .lightGreen
        return budgetLeadingLabel
    }()
    
    let budgetDataLabel: UILabel = {
        let budgetDataLabel = UILabel()
        budgetDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return budgetDataLabel
    }()
    
    let productionLeadingLabel: UILabel = {
        let productionLeadingLabel = UILabel()
        productionLeadingLabel.text = "Budget: "
        productionLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 14)
        productionLeadingLabel.textColor = .lightGreen
        return productionLeadingLabel
    }()
    
    let productionDataLabel: UILabel = {
        let productionDataLabel = UILabel()
        productionDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return productionDataLabel
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
        cardView.addSubview(topImageView)
        cardView.addSubview(descriptionLabel)
        cardView.addSubview(bottomContainerView)
        bottomContainerView.addSubview(dividerView)
        bottomContainerView.addSubview(releaseDateLeadingLabel)
        bottomContainerView.addSubview(releaseDateDataLabel)
        bottomContainerView.addSubview(genreLeadingLabel)
        bottomContainerView.addSubview(genreDataLabel)
        bottomContainerView.addSubview(budgetLeadingLabel)
        bottomContainerView.addSubview(budgetDataLabel)
        bottomContainerView.addSubview(productionLeadingLabel)
        bottomContainerView.addSubview(productionDataLabel)
        
        // Define layout
        
        cardView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(76)
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview().inset(61)
        }
        
        topImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(210)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topImageView.snp.bottom).offset(14)
            make.left.right.equalToSuperview().inset(12)
        }
        
        bottomContainerView.snp.makeConstraints { (make) in
            make.top.greaterThanOrEqualTo(descriptionLabel.snp.bottom).offset(14)
            make.left.right.equalTo(descriptionLabel)
            make.bottom.equalToSuperview().inset(14)
            make.height.equalTo(150)
        }
        
        dividerView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(2)
        }
    }
    
    // MARK: Display show
    
    func display(show: Show) {
        topImageView.image = show.wideImage
        descriptionLabel.text = show.description
    }
}
