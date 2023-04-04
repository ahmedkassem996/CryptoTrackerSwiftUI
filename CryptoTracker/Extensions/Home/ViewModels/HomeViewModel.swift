//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 26/03/2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portifolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allcoins
            .sink {[weak self] returnedCoins in
                guard let self = self else {return}
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
