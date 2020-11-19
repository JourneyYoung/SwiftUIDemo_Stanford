//
//  MemoryGame.swift
//  SwiftUIDemo
//
//  Created by Journey on 2020/11/19.
//

import Foundation

struct MemoryGame <CardContent> {
    var cards: Array<Card>
    
    init(numbers: Int, cardContentFactory : (Int) -> CardContent ) {
        cards = Array<Card>()
        for index in 0..<numbers {
            let content = cardContentFactory(index)
            let card = Card.init(isFaceUp: true, isMatched: false, content: content)
            cards.append(card)
        }
    }
    
    func choose(card:Card){
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp : Bool
        var isMatched : Bool
        var content : CardContent
    }
}
