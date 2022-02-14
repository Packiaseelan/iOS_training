//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Packiaseelan S on 14/02/22.
//

//  -- Viewmodel

import SwiftUI



class EmojiMemoryGame {
    
    static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🏍", "🛺", "✈️", "🚤", "⛵️", "🚁", "🚀", "🚉", "🛩"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
