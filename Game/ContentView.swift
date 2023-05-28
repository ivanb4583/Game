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
        CardView()
        CardView()
        CardView()
        CardView()

     }

     .padding(.horizontal)
     .foregroundColor(.red)
     
    }
    
    
    struct CardView:View {
        var isFaceUp:Bool = true
        var body: some View {
            ZStack {
                var shape =
                RoundedRectangle(cornerRadius: 25)
                if isFaceUp {
                    shape.fill(.white)
                    shape.stroke(lineWidth: 3)
                    Text("✈️")
                        .font(.largeTitle)
                } else {
                    shape.fill(.red)
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
