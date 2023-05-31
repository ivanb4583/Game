//
//  ContentView.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-05-25.
//

import SwiftUI
import CoreData

struct ContentView: View {
 var emojis = ["🚂","🚗","🚲","🛵","🚚","🚒","🚎","🚕","🚙","🏎️","🚓","🚑","🚐","🛻","🚛","🚜","🛴","🛺","🚔","🚍","✈️","🚀","🛳️","🚤"]
 @State var emojiCount = 6
    
    var body: some View {
        VStack{
            HStack{
                ForEach (emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
                
            }
            
            .padding(.horizontal)
            .foregroundColor(.red)
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        

        }
var remove: some View {
        Button (action: {
            emojiCount -= 1
        }, label: {Image(systemName: "minus.circle"
        )}
        )
    }
    var add: some View {
        Button (action: {
            emojiCount += 1
        }, label: {Image(systemName: "plus.circle"
        )}
        )
    
    }
    struct CardView:View {
        var content: String
        @State var isFaceUp:Bool = true
        var body: some View {
            ZStack {
                let shape =
                RoundedRectangle(cornerRadius: 25)
                if isFaceUp {
                    shape.fill(.white)
                    shape.stroke(lineWidth: 3)
                    Text(content)
                        .font(.largeTitle)
                } else {
                    shape.fill(.red)
                }
            }
            .onTapGesture {
                isFaceUp = !isFaceUp
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
