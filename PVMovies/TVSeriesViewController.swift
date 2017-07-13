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
        return tvSeries.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardHeaderTableViewCell.reuseID) as! CardHeaderTableViewCell
            cell.topShowsImageView.image = #imageLiteral(resourceName: "TopTVSeriesBanner")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseID) as! CardTableViewCell
            let series = tvSeries[indexPath.row - 1]
            if let image = series.posterImage {
                cell.leftImageView.image = image
            }
            cell.titleLabel.text = series.title
            cell.descriptionLabel.text = series.description
            cell.ratingLabel.text = series.rating
            cell.releaseDateLabel.text = series.releaseDate
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

