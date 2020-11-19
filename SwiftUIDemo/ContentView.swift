//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Journey on 2020/11/17.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel : EmojiMemoryGame
    
    var body: some View {
        return HStack{
            ForEach(0..<viewModel.cards.count) { index in
                CardView.init(card: viewModel.cards[index])
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView : View {
    var card : MemoryGame<String>.Card
    var body : some View{
        ZStack{
            if card.isFaceUp{
                RoundedRectangle.init(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle.init(cornerRadius: 10.0).stroke()
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius:10.0).fill()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
