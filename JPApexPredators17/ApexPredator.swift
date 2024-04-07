//
//  ApexPredator.swift
//  JPApexPredators17
//
//  Created by 川口美咲 on 2024/04/07.
//

import Foundation

struct ApexPredator {
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    struct MovieScene {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
