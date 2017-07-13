//
//  MoviesViewController.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

class MoviesViewController: ShowViewController {
    
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
        getMovies()
    }
    
    // MARK: API request
    
    func getMovies() {
        
        MovieDBClient.getTopRatedMovies { (movies) in
        
            DispatchQueue.main.async {
                self.movies = movies
                self.moviesView.cardTableView.reloadData()
            }
            
            self.getMovieImages(ofType: .poster, forMovies: movies) {
                self.getMovieImages(ofType: .wide, forMovies: movies)
            }
        }
    }
    
    func getMovieImages(ofType type: MovieDBClient.ShowImageType, forMovies movies: [Show], completion: (() -> Void)? = nil) {
        
        MovieDBClient.getImages(ofType: type, forMovies: movies) { (movieImagesByID) in
            
            for movie in self.movies {
                
                guard let image = movieImagesByID[movie.id] else {
                    continue
                }
                
                switch type {
                case .poster:
                    movie.posterImage = image
                case .wide:
                    movie.wideImage = image
                }
            }
            
            if type == .poster {
                self.moviesView.cardTableView.reloadData()
                completion?()
            }
        }
    }
}

// MARK: - Table view data source
extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardHeaderTableViewCell.reuseID) as! CardHeaderTableViewCell
            cell.topShowsImageView.image = #imageLiteral(resourceName: "TopMoviesBanner")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseID) as! CardTableViewCell
            let movie = movies[indexPath.row - 1]
            if let image = movie.posterImage {
                cell.leftImageView.image = image
            }
            cell.titleLabel.text = movie.title
            cell.descriptionLabel.text = movie.description
            cell.ratingLabel.text = movie.rating
            cell.releaseDateLabel.text = movie.releaseDate
            return cell
        }
    }
}

// MARK: - Table view delegate
extension MoviesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        } else {
            return 210
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let show = movies[indexPath.row]
        let detailsViewController = DetailsViewController(show: show)
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
