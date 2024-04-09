//
//  PredatorDetail.swift
//  JPApexPredators17
//
//  Created by 川口美咲 on 2024/04/09.
//

import SwiftUI

struct PredatorDetail: View {
    let preddator: ApexPredator
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    // Background image
                    Image(preddator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    // Dino image
                    Image(preddator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / 1.5, height: geo.size.height / 3)
                        .scaleEffect(x: -1)
                        .shadow(color: .black, radius: 7)
                        .offset(y: 20)
                }
                
                // Dino name
                
                // Current location
                
                // Appears in
                
                // Movie moments
                
                // Link to webpage
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(preddator: Predators().apexPredators[2])
    //        .preferredColorScheme(.dark)
}
