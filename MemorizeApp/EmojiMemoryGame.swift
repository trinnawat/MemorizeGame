//
//  EmojiMemoryGame.swift
//  MemorizeApp
//
//  Created by Trinnawat.c on 13/03/2025.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🏆", "👑", "🗡️", "💵", "🐉", "🍊", "🐯", "🏵️"]
    
    private static func createMemoryGame(numberOfPairsOfCards: Int) -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                emojis[pairIndex]
            } else {
                "😅"
            }
       }
    }
    
    @Published private var gameModel = createMemoryGame(numberOfPairsOfCards: 8)
    
    var cards: [MemoryGame<String>.Card] {
        gameModel.cards
    }
    
    var score: Int {
        gameModel.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        gameModel.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        gameModel.choose(card)
    }
}
