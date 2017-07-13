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
        cardView.layer.shadowOffset = CGSize(width: 1, height: 2)
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
        descriptionLabel.font = UIFont(name: "SourceSansPro-Light", size: 12)
        return descriptionLabel
    }()
    
    let bottomContainerView: UIView = {
        let bottomContainerView = UIView()
        return bottomContainerView
    }()
    
    let dividerView: UIView = {
        let dividerView = UIView()
        dividerView.backgroundColor = .backgroundGrey
        return dividerView
    }()
    
    let releaseDateLeadingLabel: UILabel = {
        let releaseDateLeadingLabel = UILabel()
        releaseDateLeadingLabel.text = "Release Date:  "
        releaseDateLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16)
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
        genreLeadingLabel.text = "Genre:  "
        genreLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16)
        genreLeadingLabel.textColor = .lightGreen
        return genreLeadingLabel
    }()
    
    let genreDataLabel: UILabel = {
        let genreDataLabel = UILabel()
        genreDataLabel.text = "N / A"
        genreDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return genreDataLabel
    }()
    
    let budgetLeadingLabel: UILabel = {
        let budgetLeadingLabel = UILabel()
        budgetLeadingLabel.text = "Budget:  "
        budgetLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16)
        budgetLeadingLabel.textColor = .lightGreen
        return budgetLeadingLabel
    }()
    
    let budgetDataLabel: UILabel = {
        let budgetDataLabel = UILabel()
        budgetDataLabel.text = "N / A"
        budgetDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        return budgetDataLabel
    }()
    
    let productionLeadingLabel: UILabel = {
        let productionLeadingLabel = UILabel()
        productionLeadingLabel.text = "Production Co:  "
        productionLeadingLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16)
        productionLeadingLabel.textColor = .lightGreen
        return productionLeadingLabel
    }()
    
    let productionDataLabel: UILabel = {
        let productionDataLabel = UILabel()
        productionDataLabel.font = UIFont(name: "SourceSansPro-Regular", size: 12)
        productionDataLabel.text = "N / A"
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
            make.top.equalToSuperview().inset(78)
            make.left.right.equalToSuperview().inset(14)
            make.bottom.equalToSuperview().inset(63)
        }
        
        topImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(210)
        }
        
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topImageView.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(18)
        }
        
        bottomContainerView.snp.makeConstraints { (make) in
            make.top.greaterThanOrEqualTo(descriptionLabel.snp.bottom).offset(14)
            make.left.right.equalTo(descriptionLabel)
            make.bottom.equalToSuperview().inset(18)
            make.height.equalTo(120)
        }
        
        dividerView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(2)
        }
        
        releaseDateLeadingLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(14)
            make.left.equalToSuperview()
        }
        
        releaseDateDataLabel.snp.makeConstraints { (make) in
            make.left.equalTo(releaseDateLeadingLabel.snp.right)
            make.right.equalToSuperview()
            make.centerY.equalTo(releaseDateLeadingLabel)
        }
        
        genreLeadingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(releaseDateLeadingLabel.snp.bottom).offset(14)
            make.left.equalToSuperview()
        }
        
        genreDataLabel.snp.makeConstraints { (make) in
            make.left.equalTo(genreLeadingLabel.snp.right)
            make.right.equalToSuperview()
            make.centerY.equalTo(genreLeadingLabel)
        }
        
        budgetLeadingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(genreLeadingLabel.snp.bottom).offset(14)
            make.left.equalToSuperview()
        }
        
        budgetDataLabel.snp.makeConstraints { (make) in
            make.left.equalTo(budgetLeadingLabel.snp.right)
            make.right.equalToSuperview()
            make.centerY.equalTo(budgetLeadingLabel)
        }
        
        productionLeadingLabel.snp.makeConstraints { (make) in
            make.top.equalTo(budgetLeadingLabel.snp.bottom).offset(14)
            make.left.equalToSuperview()
        }
        
        productionDataLabel.snp.makeConstraints { (make) in
            make.left.equalTo(productionLeadingLabel.snp.right)
            make.right.equalToSuperview()
            make.centerY.equalTo(productionLeadingLabel)
        }
    }
    
    // MARK: Display show
    
    func display(show: Show) {
        topImageView.image = show.wideImage
        descriptionLabel.text = show.description
        releaseDateDataLabel.text = show.releaseDate
    }
}
