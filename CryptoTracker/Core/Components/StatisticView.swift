//
//  StatisticView.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 17/04/2023.
//

import SwiftUI

struct StatisticView: View {
    
    let state: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(state.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondarytext)
            Text(state.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: (state.percentageChange ?? 0) >= 0 ? 0 : 180 ))
                Text(state.percentageChange?.asPersentString() ?? "")
                    .font(.caption)
                    .bold()
                    .foregroundColor((state.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
                    .opacity(state.percentageChange == nil ? 0.0 : 1.0)
            }
            
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(state: dev.state1)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            StatisticView(state: dev.state2)
                .previewLayout(.sizeThatFits)
            StatisticView(state: dev.state3)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
    }
}
