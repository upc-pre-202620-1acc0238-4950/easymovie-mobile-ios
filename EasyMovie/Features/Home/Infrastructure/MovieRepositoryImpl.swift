//
//  MovieRepositoryImpl.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

class MovieRepositoryImpl: MovieRepository {
    
    let api = MovieApi()
    
    func getMovies() async throws -> [Movie] {
        
        let dtos = try await api.getMovies()
        
        return dtos.map { dto in
            Movie(id: dto.id, title: dto.title, poster: dto.poster, director: dto.director)
        }
        
       
    }
    
    
}
