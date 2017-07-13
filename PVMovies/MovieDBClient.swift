//
//  MovieDBClient.swift
//  PV-Movies-App
//
//  Created by Marie Park on 7/4/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import UIKit

struct MovieDBClient {
    
    private static func createURL(withEndpoint endpoint: String) -> URL? {
        return URL(string: "https://api.themoviedb.org/3/movie/\(endpoint)?api_key=\(Secrets.apiKey)")
    }
    
    static func getTopRatedMovies(completion: @escaping ([Show]) -> Void) {
        
        guard let url = createURL(withEndpoint: "top_rated") else {
            print("Error unwrapping top-rated movieURL")
            completion([])
            return
        }
        
        URLSession.shared
            .dataTask(with: url) { (data, response, error) in
                
                guard let data = data else {
                    print("Error unwrapping Movie DB response data")
                    completion([])
                    return
                }
                
                let movies = JSONParser.createShows(fromData: data)
                completion(movies)
                
            }
            .resume()
    }
    
    static func getImages(forMovies movies: [Show], completion: @escaping ([Int : UIImage]) -> Void) {
        
        let posterBaseURLString = "https://image.tmdb.org/t/p/w154"
        var movieImagesByID: [Int : UIImage] = [:]
        
        // Dispatch group for handling multiple requests
        let group = DispatchGroup()
        
        for movie in movies {
            guard let posterURL = URL(string: posterBaseURLString + movie.imageURL) else {
                continue
            }
            
            group.enter()
            
            URLSession.shared
                .dataTask(with: posterURL) { (data, response, error) in
                    
                    if let data = data, let image = UIImage(data: data) {
                        movieImagesByID[movie.id] = image
                    }
                    
                    group.leave()
                    
                }
                .resume()
        }
        
        group.notify(queue: .main) { 
            completion(movieImagesByID)
        }
    }
}

