//
//  MovieRepositoryImpl.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

class MovieRepositoryImpl: MovieRepository {
    func getMovies() async -> [Movie] {
        return [
            Movie(id: 1, title: "Inception", poster: "https://image.tmdb.org/t/p/w500/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg", director: "Christopher Nolan")
        ]
    }
    
    
}
