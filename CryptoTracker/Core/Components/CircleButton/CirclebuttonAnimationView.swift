//
//  CirclebuttonAnimationView.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 21/03/2023.
//

import SwiftUI

struct CirclebuttonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
    }
}

struct CirclebuttonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CirclebuttonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
