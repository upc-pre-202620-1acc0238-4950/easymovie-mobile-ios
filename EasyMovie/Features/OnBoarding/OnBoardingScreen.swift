//
//  OnBoardingScreen.swift
//  EasyMovie
//
//  Created by Alumnos on 10/11/26.
//

import SwiftUI

struct OnBoardingScreen: View {
    @State private var showLogin = false

    var body: some View {
        
        NavigationStack {
            
            ZStack (alignment: .bottom){
                GeometryReader { geometry in
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width)
                }.overlay {
                    LinearGradient(colors: [
                        .clear,
                        .black
                    ], startPoint: .top, endPoint: .bottom)
                }
                .ignoresSafeArea()
                
                VStack (spacing: 8) {
                    Text("Welcome to Easy Movie")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Text("Explore movies and series")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                    
                    Button {
                        showLogin.toggle()
                    } label: {
                        Text("Continue")
                            .frame(height: 24)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.orange)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.horizontal)
                    }
                }
                
            }
            .navigationDestination(isPresented: $showLogin) {
                LoginScreen()
            }
        }
        
        
        
    }
}


#Preview {
    OnBoardingScreen()
}
