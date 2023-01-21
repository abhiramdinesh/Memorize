//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Abhiram Dinesh on 11/9/22.
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
