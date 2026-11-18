//
//  MovieCard.swift
//  EasyMovie
//
//  Created by Alumnos on 17/11/26.
//

import SwiftUI

struct MovieCard: View {
    let movie: Movie
    var body: some View {
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
            .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack {
                Text(movie.title)
                    .bold()
            }
            .padding()
            Spacer()
        }
        .background(.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 8))

    }
    
}
