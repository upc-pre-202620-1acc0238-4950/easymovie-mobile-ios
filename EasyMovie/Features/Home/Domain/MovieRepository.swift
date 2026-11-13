//
//  MovieRepository.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

protocol MovieRepository {
    func getMovies() async ->  [Movie]
}
