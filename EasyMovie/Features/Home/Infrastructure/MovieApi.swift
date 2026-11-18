//
//  MovieApi.swift
//  EasyMovie
//
//  Created by Alumnos on 17/11/26.
//

import Foundation

class MovieApi {
    let baseUrl = "https://movieapp-buckehh3b8d9b0b3.eastus-01.azurewebsites.net/api/movies"
    
    func getMovies() async throws -> [MovieDto] {
        guard let url = URL(string: baseUrl) else { throw NetworkError.invalidUrl }
        
        let session = URLSession.shared
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await session.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse }
       
        do {
            let moviesDto = try JSONDecoder().decode(MoviesDto.self, from: data)
            return moviesDto.movies
        } catch {
            throw NetworkError.decodingError
        }
    }
}

enum NetworkError: Error {
    case invalidUrl
    case invalidResponse
    case decodingError
}
