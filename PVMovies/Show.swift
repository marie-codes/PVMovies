//
//  Show.swift
//  PVMovies
//
//  Created by Marie Park on 7/12/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import Foundation

enum ShowType {
    case movie
    case tvSeries
}

struct Show {
    let showType: ShowType
    let imageURL: String
    let title: String
    let description: String
    let genre: String
    let releaseDate: Int
    let id: Int
}
