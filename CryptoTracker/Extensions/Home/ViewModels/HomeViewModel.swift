//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 26/03/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portifolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portifolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
}
