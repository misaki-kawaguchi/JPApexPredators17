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
                
                VStack(alignment: .leading) {
                    // Dino name
                    Text(preddator.name)
                        .font(.largeTitle)
                    
                    // Current location
                    
                    // Appears in
                    Text("Appears In:")
                        .font(.title3)
                    
                    ForEach(preddator.movies, id: \.self) { movie in
                        Text("・" + movie)
                            .font(.subheadline)
                    }
                    
                    // Movie moments
                    Text("Movie Moments")
                        .font(.title)
                        .padding(.top, 15)
                    
                    ForEach(preddator.movieScenes) { scene in
                        Text(scene.movie)
                            .font(.title2)
                            .padding(.vertical, 1)
                        
                        Text(scene.sceneDescription)
                            .padding(.bottom, 15)
                    }
                    
                    // Link to webpage
                    Text("Read More：")
                        .font(.caption)
                    
                    Link(preddator.link, destination: URL(string: preddator.link)!)
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
                .padding()
                .padding(.bottom)
                .frame(width: geo.size.width, alignment: .leading)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(preddator: Predators().apexPredators[2])
    //        .preferredColorScheme(.dark)
}
