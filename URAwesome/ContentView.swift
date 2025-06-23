//
//  ContentView.swift
//  URAwesome
//
//  Created by Parimal Devi on 22/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Whats So Funny 'Bout ?")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.purple)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.brown)
            Spacer()
            HStack {
                Button ("Peace") {
                    message = "Peace"
                    image = "peacesign"
                }
                Button ("Love") {
                    message = "Love"
                    image = "heart"
                }
                Button ("Understanding") {
                    message = "Understanding"
                    image = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
