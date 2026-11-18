//
//  MoviesDto.swift
//  EasyMovie
//
//  Created by Alumnos on 17/11/26.
//

struct MoviesDto: Decodable {
    let count: Int
    let movies: [MovieDto]
    
    enum CodingKeys: String, CodingKey {
        case count
        case movies = "results"
    }
}
