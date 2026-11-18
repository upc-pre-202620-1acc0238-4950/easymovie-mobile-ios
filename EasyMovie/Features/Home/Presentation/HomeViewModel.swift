//
//  HomeViewModel.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

import Observation

@Observable
class HomeViewModel {
    private(set) var movies: [Movie] = []
    private(set) var isLoading: Bool = false
    private let repository: MovieRepository = MovieRepositoryImpl()
    
    func getMovies() async {
        isLoading = true
        
        do {
            movies = try await repository.getMovies()

        }   catch {
            
        }
        isLoading = false
    }
    
}
