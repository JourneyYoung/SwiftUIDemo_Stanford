//
//  EmojiMemoryGame.swift
//  SwiftUIDemo
//
//  Created by Journey on 2020/11/19.
//

import SwiftUI

func createCardConten(pairIndex: Int) -> String{
    return "😄"
}

class EmojiMemoryGame {
    
    private var model : MemoryGame<String> = MemoryGame<String>(numbers: 4) { (pairIndex) -> String in
        let emojis : Array<String> = ["😄","👻","🐱","🙅‍♀️"]
        return emojis[pairIndex]
    }
    
    var cards : Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    public func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
