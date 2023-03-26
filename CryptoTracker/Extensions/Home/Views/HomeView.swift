//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 21/03/2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showportifolio: Bool = false
    
    var body: some View {
        
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                
                columnsTitles
                                
                if !showportifolio {
                    allCoinsList
                    .transition(.move(edge: .leading))
                }
                
                if showportifolio {
                    portifolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                
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
        .environmentObject(dev.homeVM)
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
    
    private var allCoinsList: some View {
        List {
            ForEach(vm.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())

    }
    
    private var portifolioCoinsList: some View {
        List {
            ForEach(vm.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())

    }
    
    private var columnsTitles: some: View {
        HStack {
            Text("Coin")
            Spacer()
            if showportifolio {
               Text("Holdings")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondarytext)
        .padding(.horizontal)

    }
    
}
