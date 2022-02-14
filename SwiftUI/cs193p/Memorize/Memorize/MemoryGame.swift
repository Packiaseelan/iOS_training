//
//  MemoryGame.swift
//  Memorize
//
//  Created by Packiaseelan S on 14/02/22.
//

//  -- Model

import Foundation

struct MemoryGame<CardContent> {
    private (set) var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int)-> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
