//
//  MemoryGame.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-06-03.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
   mutating func choose (_ card:Card) {
        let chosenIndex = index(of: card)
        chosenCard.isFaceUp.toggle()
        print("\(cards)")
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0 //bogus!
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
//something
