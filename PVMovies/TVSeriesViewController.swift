//
//  TVSeriesViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class TVSeriesViewController: ShowViewController {
    
    // MARK: View
    
    var tvSeriesView: TVSeriesView!
    
    // MARK: Data
    
    var tvSeries: [Show] = []
    
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
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardHeaderTableViewCell.reuseID)!
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseID)!
            return cell
        }
    }
}

// MARK: - Table view delegate
extension TVSeriesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        } else {
            return 210
        }
    }
}
