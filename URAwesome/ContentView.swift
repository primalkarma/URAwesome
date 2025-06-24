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
    @State private var inumber = 0
    @State private var mnumber = 0
    var body: some View {
        VStack {
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.brown)
                .multilineTextAlignment(.center)
            Spacer()
            Button ("Click Me") {
                let messages = [
                    "You are awesome",
                    "You are great",
                    "Hello Swifter",
                    "Don't give up",
                    "Keep going",
                    "You are almost there",
                    "There is glory at the end of the tunnel",
                    "It is worthwhile",
                    "I am proud of you"]
                
                message  = messages[Int.random(in: 0...messages.count-1)]
                
                
                image = "image\(Int.random(in: 0...9))"
                inumber += 1
                
                
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
