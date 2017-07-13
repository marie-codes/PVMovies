//
//  DetailsViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: View
    
    var detailsView: DetailsView!
    
    // MARK: Data
    
    let show: Show
    
    // MARK: Initialization
    
    init(show: Show) {
        self.show = show
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsView = DetailsView(show: show)
        view = detailsView
    }
}
