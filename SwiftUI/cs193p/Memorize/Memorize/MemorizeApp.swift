//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Packiaseelan S on 14/02/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
