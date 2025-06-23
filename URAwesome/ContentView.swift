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
                .frame(width: 200, height: 200)
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.brown)
            HStack {
                Button ("Awesome") {
                    message = "I am Awesome"
                }
                Button ("Great") {
                    message = "I am Great"
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
