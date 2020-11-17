//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Journey on 2020/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack{
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView : View {
    var isFaceUp : Bool
    var body : some View{
        ZStack{
            if isFaceUp{
                RoundedRectangle.init(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle.init(cornerRadius: 10.0).stroke()
                Text("👻")
            }else{
                RoundedRectangle(cornerRadius:10.0).fill()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}