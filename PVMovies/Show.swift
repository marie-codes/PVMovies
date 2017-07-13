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
    let imageURL: String
    let title: String
    let description: String
    let releaseDate: String
    let rating: String
    let id: Int
    let genreIDs: [Int]
    var image: UIImage?
    
    init(showType: ShowType, imageURL: String, title: String, description: String, releaseDate: String, rating: String, id: Int, genreIDs: [Int]) {
        self.showType = showType
        self.imageURL = imageURL
        self.title = title
        self.description = description
        self.releaseDate = releaseDate
        self.rating = rating
        self.id = id
        self.genreIDs = genreIDs
    }
}
