//
//  CoinDataService.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 03/04/2023.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allcoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    private func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h") else {return}
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletions, receiveValue: { [weak self] returnedCoins in
                self?.allcoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
    
}
