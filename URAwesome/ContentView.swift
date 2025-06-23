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
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.purple)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.brown)
            Spacer()
            Button ("Click Me") {
                let message1 = "You Are Awesome"
                let message2 = "You Are Great"
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
                
//                if message == message1 {
//                    message = message2
//                    image = image2
//                }
//                else{
//                    message = message1
//                    image = image1
//                }
                message = (message == message1 ? message2 : message1)
                image = (message == message1 ? image1 : image2)
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
