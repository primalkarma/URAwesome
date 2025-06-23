//
//  ContentView.swift
//  URAwesome
//
//  Created by Parimal Devi on 22/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a Programmer"
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.tint)
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.brown)
            Button ("Tap Me") {
                message = "I am Awesome"
                print(message)
            }
            .padding()
            .background(Color.blue)
            .foregroundStyle(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
