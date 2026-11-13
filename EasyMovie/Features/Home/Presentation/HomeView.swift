//
//  HomeView.swift
//  EasyMovie
//
//  Created by Alumnos on 13/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack{
            List {
                ForEach(viewModel.movies) { movie in
                    HStack (alignment: .top){
                        AsyncImage(url: URL(string: movie.poster)) { phase in
                            switch phase {
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    
                            case .failure:
                                Image(systemName: "film")
                                    .resizable()
                                    .scaledToFit()
                            case .empty:
                                EmptyView()
                            @unknown default:
                                EmptyView()
                            }
                            
                            
                        }
                        .frame(width: 80, height: 120)
                        Text(movie.title)
                    }
                }
                
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
