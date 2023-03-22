//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 21/03/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showportifolio: Bool = false
    
    var body: some View {
        
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
        }
                
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        
    }
}


extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showportifolio ? "plus" : "info")
                .animation(.none)
                .background(
                    CirclebuttonAnimationView(animate: $showportifolio)
                )
            Spacer()
            Text(showportifolio ? "Portifolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showportifolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showportifolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
