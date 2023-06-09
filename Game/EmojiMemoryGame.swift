//
//  EmojiMemoryGame.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-06-05.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚂","🚗","🚲","🛵","🚚","🚒","🚎","🚕","🚙","🏎️","🚓","🚑","🚐","🛻","🚛","🚜","🛴","🛺","🚔","🚍","✈️","🚀","🛳️","🚤"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) {pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        
    }
}
