//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Packiaseelan S on 14/02/22.
//

//  -- Viewmodel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🏍", "🛺", "✈️", "🚤", "⛵️", "🚁", "🚀", "🚉", "🛩"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 9) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose (_ card: Card) {
        model.choose(card)
    }
}
