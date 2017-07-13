//
//  Show.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

enum ShowType {
    case movie
    case tvSeries
}

class Show {
    
    let showType: ShowType
    let posterImageURL: String
    let wideImageURL: String
    let title: String
    let description: String
    let releaseDate: String
    let rating: String
    let id: Int
    let genreIDs: [Int]
    var genre: String?
    var posterImage: UIImage?
    var wideImage: UIImage?
    
    init(showType: ShowType, posterImageURL: String, wideImageURL: String, title: String, description: String, releaseDate: String, rating: String, id: Int, genreIDs: [Int]) {
        self.showType = showType
        self.posterImageURL = posterImageURL
        self.wideImageURL = wideImageURL
        self.title = title
        self.description = description
        self.releaseDate = releaseDate
        self.rating = rating
        self.id = id
        self.genreIDs = genreIDs
    }
}
