//
//  EmojiMemoryGameView.swift
//  MemorizeApp
//
//  Created by Trinnawat.c on 10/03/2025.
//

import SwiftUI


struct EmojiMemoryGameView: View {
    typealias Card = MemoryGame<String>.Card
    @ObservedObject var viewModel: EmojiMemoryGame
    
    private let aspectRation: CGFloat = 2/3
    private let spacing: CGFloat = 4
    
    var body: some View {
        VStack {
            cards
                .foregroundColor(.orange)
            HStack {
                Text("Score: \(viewModel.score)")
                    .animation(nil)
                Spacer()
                Button("Shuffle") {
                    withAnimation {
                        viewModel.shuffle()
                    }
                }
            }
            .font(.largeTitle)
        }
        .padding()
    }
    
    private var cards: some View {
        AspectVGrid(viewModel.cards, aspectRatio: aspectRation) { card in
            CardView(card)
                .padding(spacing)
                .overlay(FlyingNumber(number: scoreChange(causedBy: card)))
                .onTapGesture {
                    withAnimation{
                        viewModel.choose(card)
                    }
                }
        }
    }

    
    private func scoreChange(causedBy card: Card) -> Int {
        return 0
    }
}



#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
}
