//
//  PipesView.swift
//  FlappyBird
//
//  Created by Роман on 29.07.2024.
//

import SwiftUI

struct PipesView: View {
    let topPipeHeight: Double
    let pipeWith: Double
    let pipeSpacing: Double
    
    var body: some View {
        //Верхняя труба
        GeometryReader { geomery in
            VStack {
                Image(.flappeBirdPipe)
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWith, height: topPipeHeight)
                
                // Отсутп между трубами
                Spacer(minLength: pipeSpacing)
                
                // Нижняя труба
                Image(.flappeBirdPipe)
                    .resizable()
                    .frame(width: pipeWith,
                           height: geomery.size.height - topPipeHeight - pipeSpacing)
            }
        }
    }
}

#Preview {
    PipesView(topPipeHeight: 300, pipeWith: 100, pipeSpacing: 100)
}
