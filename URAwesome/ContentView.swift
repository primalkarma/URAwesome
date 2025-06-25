//
//  ContentView.swift
//  URAwesome
//
//  Created by Parimal Devi on 22/06/25.
//

import SwiftUI
import AVFAudio


struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    @State private var lastinumber = -1
    @State private var lastmnumber = -1 //lastmnumber will never be -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    let numberOfImages = 10
    let numberOfSounds = 6
    
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
                
                lastmnumber = nonRepeatingRandom(lastNumber: lastmnumber, upperBound: messages.count-1)
                message = messages[lastmnumber]
                
                lastinumber = nonRepeatingRandom(lastNumber: lastinumber, upperBound: numberOfImages-1)
                image = "image\(lastinumber)"
                
                lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBound: numberOfSounds-1)
                playSound(soundName: "sound\(lastSoundNumber)")
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
        }
        .padding()
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBound: Int) -> Int {
        var newNumber:Int
        repeat {
            newNumber = Int.random(in: 0...upperBound)
        } while newNumber == lastNumber
        return newNumber
    }
    
    func playSound (soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("Error: Could not read the sound file \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("Error: \(error.localizedDescription)  creating audio player")
        }
    }
}

#Preview {
    ContentView()
}
