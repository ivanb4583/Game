//
//  ContentView.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-05-25.
//

import SwiftUI
import CoreData

struct ContentView: View {
 var emojis = ["🚂","🚗","🚲","🛵","🛵"]
    
 var body: some View {
     HStack{
         ForEach (emojis, id: \.self, content: {emoji in
             CardView(content: emoji)
         })

     }

     .padding(.horizontal)
     .foregroundColor(.red)
     
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
