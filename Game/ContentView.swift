//
//  ContentView.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-05-25.
//

import SwiftUI
import CoreData

struct ContentView: View {
 var body: some View {
     HStack{
        CardView(isFaceUp:true)
        CardView(isFaceUp:true)
        CardView(isFaceUp:true)
        CardView(isFaceUp:true)

     }

     .padding(.horizontal)
     .foregroundColor(.red)
     
    }
    
    
    struct CardView:View {
        var isFaceUp:Bool
        var body: some View {
            ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 25).fill(.white)
                    RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 3)
                    Text("✈️")
                        .font(.largeTitle)
                } else {
                    RoundedRectangle(cornerRadius: 25).fill(.red)
                }
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
