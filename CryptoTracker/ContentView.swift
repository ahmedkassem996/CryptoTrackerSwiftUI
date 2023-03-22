//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            Text("Hello")
                .foregroundColor(Color.theme.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
