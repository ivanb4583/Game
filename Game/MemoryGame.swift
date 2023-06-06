//
//  MemoryGame.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-06-03.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose (_ card:Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card> ()
        for pairIndex in 0..<(numberOfPairsOfCards) {
            var content: CardContent = createCardContent(pairIndex)
            cards.append (Card(content: content))
            cards.append (Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
