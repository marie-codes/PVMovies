//
//  IMDBClient.swift
//  PV-Movies-App
//
//  Created by Marie Park on 7/4/17.
//  Copyright © 2017 Marie Park. All rights reserved.
//

import Foundation

struct IMDBClient {
    
    private static func createURL(withEndpoint endpoint: String) -> URL? {
        return URL(string: "https://api.themoviedb.org/3/movie/\(endpoint)?api_key=\(Secrets.apiKey)")
    }
    
    static func getTopRatedMovies() {
        
        guard let url = createURL(withEndpoint: "top_rated") else {
            print("Error unwrapping top-rated movieURL")
            return
        }
        
        URLSession.shared
            .dataTask(with: url) { (data, response, error) in
                
            }
            .resume()
    }
}

