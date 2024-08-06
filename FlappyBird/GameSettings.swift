//
//  gameSettings.swift
//  FlappyBird
//
//  Created by Роман on 29.07.2024.
//

import SwiftUI

struct GameSettings {
    let pipeWidth: Double
    let minPipeHeight: Double
    let maxPipeHeight: Double
    let pipeSpacing: Double
    let pipeSpeed: Double
    let jumpVelocity: Int
    let gravity: Double
    let groundHeight: Double
    let birdSize: Double
    let birdRadius: Double

    static var defaultSettings: GameSettings {
        GameSettings(
            pipeWidth: 100,
            minPipeHeight: 100,
            maxPipeHeight: 500,
            pipeSpacing: 100,
            pipeSpeed: 300,
            jumpVelocity: -400,
            gravity: 1000,
            groundHeight: 100,
            birdSize: 80,
            birdRadius: 13
        )
    }
}
