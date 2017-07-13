//
//  TVSeriesViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class TVSeriesViewController: UIViewController {
    
    // MARK: View
    
    var tvSeriesView: TVSeriesView!
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvSeriesView = TVSeriesView(frame: view.frame)
        view = tvSeriesView
        tvSeriesView.cardTableView.dataSource = self
        tvSeriesView.cardTableView.delegate = self
    }
}

// MARK: - Table view data source
extension TVSeriesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseID)!
        return cell
    }
}

// MARK: - Table view delegate
extension TVSeriesViewController: UITableViewDelegate {
    
    
}
