//
//  GameView.swift
//  FlappyBird
//
//  Created by Роман on 29.07.2024.
//

import SwiftUI

struct GameView: View {
    @State private var birdPosition = CGPoint(x: 100, y: 300)
    @State private var topPipeHeight =  Double.random(in: 100...500)
    
    
    private let defaultSettings = GameSettings.defaultSettings
    
    var body: some View {
        GeometryReader { screenSettings in
            Image(.flappyBirdBackground)
                .resizable()
                .scaleEffect(CGSize(width: screenSettings.size.width * 0.00387, 
                                    height: screenSettings.size.height * 0.0017392))
            
            BirdView(birdSize: defaultSettings.birdSize)
                .position(defaultSettings.defaultBirdPosition)
            PipesView(topPipeHeight: topPipeHeight,
                      pipeWith: defaultSettings.pipeWidth,
                      pipeSpacing: defaultSettings.pipeSpacing)
            .offset(x: screenSettings.size.width)
        }
    }
}

#Preview {
    GameView()
}
