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
            let content: CardContent = createCardContent(pairIndex)
            cards.append (Card(content: content, id: pairIndex*2))
            cards.append (Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
