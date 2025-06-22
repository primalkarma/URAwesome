//
//  ContentView.swift
//  URAwesome
//
//  Created by Parimal Devi on 22/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.tint)
            Spacer()
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.brown)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
