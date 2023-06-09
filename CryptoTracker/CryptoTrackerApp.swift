//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 20/03/2023.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
