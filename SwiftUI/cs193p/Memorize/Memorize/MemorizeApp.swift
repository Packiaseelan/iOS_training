//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Packiaseelan S on 14/02/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
