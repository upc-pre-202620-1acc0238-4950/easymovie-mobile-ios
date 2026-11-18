//
//  MovieDto.swift
//  EasyMovie
//
//  Created by Alumnos on 17/11/26.
//

struct MovieDto: Decodable {
    let id: Int
    let title: String
    let poster: String
    let director: String
    let year: Int
    let genre: String
    let rating: Double
    let overview: String
}
