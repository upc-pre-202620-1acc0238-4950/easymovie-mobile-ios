//
//  MovieDetailView.swift
//  EasyMovie
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: movie.poster)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                    
                case .failure:
                    Image(systemName: "film")
                        .resizable()
                        .scaledToFill()
                case .empty:
                    EmptyView()
                @unknown default:
                    EmptyView()
                }
                
                
            }
            .frame(height: 240)
            .frame(maxWidth: .infinity)
            Spacer()
            
            
            
        }
    }
}
