//
//  HomeView.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    @State private var selectedMovie: Movie?
    
    var body: some View {
        VStack{
            List {
                ForEach(viewModel.movies) { movie in
                    MovieCard(movie: movie)
                        .onTapGesture {
                            selectedMovie = movie
                        }
                    
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationDestination(item: $selectedMovie) { movie in
                MovieDetailView(movie: movie)
            }
        }
        
        
        
        .task {
            await viewModel.getMovies()
        }
        
    }
    
}

#Preview {
    HomeView()
}
