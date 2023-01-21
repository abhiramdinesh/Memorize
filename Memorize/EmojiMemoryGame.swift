//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Abhiram Dinesh on 11/14/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["🚜", "🚂", "🚀", "⛵️", "🚢", "✈️", "🛫", "🚞", "🚘", "🛺", "🛵", "🚲", "🚢", "🚑", "🚗", "🚛", "🛩", "🏍", "🚁", "🚔", "🛻", "🚚", "🚓", "🛶"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
        
    
    var cards: [Card] {
       model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
