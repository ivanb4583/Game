//
//  ContentView.swift
//  Game
//
//  Created by IVAN YAKOVENKO on 2023-05-25.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoryGame
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: [GridItem (.adaptive(minimum:65))]){
                    ForEach (viewModel.cards) { card in
                        CardView(card:card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
}


    struct CardView:View {
        let card: MemoryGame<String>.Card
        var body: some View {
            ZStack {
                let shape =
                RoundedRectangle(cornerRadius: 25)
                if card.isFaceUp {
                    shape.fill(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(card.content)
                        .font(.largeTitle)
                } else {
                    shape.fill(.red)
                }
              }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
                .preferredColorScheme(.dark)
            ContentView(viewModel:game)
                .preferredColorScheme(.light)
        }
    }

