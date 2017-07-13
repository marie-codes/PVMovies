//
//  MoviesViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    // MARK: View
    
    var moviesView: MoviesView!
    
    // MARK: Data
    
    var movies: [Show] = []
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesView = MoviesView(frame: view.frame)
        view = moviesView
        moviesView.cardTableView.dataSource = self
        moviesView.cardTableView.delegate = self
    }
}

// MARK: - Table view data source
extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseID)!
        return cell
    }
}

// MARK: - Table view delegate
extension MoviesViewController: UITableViewDelegate {
    
    
}
