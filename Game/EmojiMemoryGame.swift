//
//  EmojiMemoryGame.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-06-05.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
