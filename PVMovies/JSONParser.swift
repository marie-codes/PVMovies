//
//  JSONParser.swift
//  PVMovies
//
//  Created by Marie Park on 7/13/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

struct JSONParser {
    
    static func createShows(fromData data: Data) -> [Show] {
        var shows: [Show] = []
        
        do {
            
            guard let json = try JSONSerialization.jsonObject(with: data) as? [String : Any] else {
                return shows
            }
            
            guard let results = json["results"] as? [[String : Any]] else {
                return shows
            }
            
            for result in results {
                
                guard let title = result["title"] as? String else {
                    continue
                }
                
                guard let overview = result["overview"] as? String else {
                    continue
                }
                
                guard let voteAverage = result["vote_average"] as? Double else {
                    continue
                }
                
                let rating = String(format: "%.1f", voteAverage)
                
                guard let posterURLString = result["poster_path"] as? String else {
                    continue
                }
                
                guard let genreIDs = result["genre_ids"] as? [Int] else {
                    continue
                }
                
                guard let showID = result["id"] as? Int else {
                    continue
                }
                
                guard let releaseDate = result["release_date"] as? String, releaseDate.characters.count > 4 else {
                    continue
                }
                
                let releaseYearIndex = releaseDate.index(releaseDate.startIndex, offsetBy: 4)
                let releaseYear = releaseDate.substring(to: releaseYearIndex)

                shows.append(Show(showType: .movie, imageURL: posterURLString, title: title, description: overview, releaseDate: releaseYear, rating: rating, id: showID, genreIDs: genreIDs))
                
                print(title)
                print(overview)
                print(rating)
                print(posterURLString)
                print(releaseYear)
                print(genreIDs)
                print(showID)
                
            }
            
            print(results)
            
        } catch {
            print(error.localizedDescription)
        }
        
        return shows
    }
}
