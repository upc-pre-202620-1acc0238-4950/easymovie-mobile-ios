//
//  MainScreen.swift
//  EasyMovie
//
//  Created by Alumnos on 10/11/26.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Favorites", systemImage: "heart") {
                
            }
            Tab("Watchlist", systemImage: "tv") {
                
            }
        }
        .tint(.orange)
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    MainScreen()
}
