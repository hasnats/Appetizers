//
//  ContentView.swift
//  MemorizerApp
//
//  Created by Hasna T S on 13/09/23.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🍎","🥑","🍒","🍋","🍒","🍑","🍉","🍅","🍓","🫐"]
    @State var cardCount: Int = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<cardCount, id: \.self) {index in
                    CardView(emoji: emojis[index])
                }
            }
            .foregroundColor(.orange)
            .font(.largeTitle)
            
            HStack{
                    Button {
                        cardCount += 1
                    } label: {
                        Text("Add Card")
                    }
                Spacer()
                    Button {
                        cardCount -= 1
                    } label: {
                        Text("Remove Card")
                    }
            }
        }
        .padding()
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CardView: View {
    @State var isFaceUp: Bool = true
    var emoji: String
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                Text(emoji)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 3)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
