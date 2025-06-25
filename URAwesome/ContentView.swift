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
//                generate a random number to use as an index
//                if mnumber == lastmnumber {
//                keep generating a new random mnumber until
//                mnumber != lastmnumber
//                set message = messages[mnumber]
//                update lastmnumber with mnumber
                var mnumber:Int
                repeat {
                    mnumber = Int.random(in: 0...messages.count-1)
                } while mnumber == lastmnumber
                message = messages[mnumber]
                lastmnumber = mnumber
                
                var inumber:Int
                repeat {
                    inumber = Int.random(in: 0...9)
                } while inumber == lastinumber
                image = "image\(inumber)"
                lastinumber = inumber
                
                
                var soundNumber: Int
                repeat {
                    soundNumber = Int.random(in: 0...numberOfSounds-1)
                } while soundNumber == lastSoundNumber
                lastSoundNumber = soundNumber
                let soundName = "sound\(soundNumber)"
                guard let soundfFile = NSDataAsset(name: soundName) else {
                    print("Error: Could not read the sound file \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundfFile.data)
                    audioPlayer.play()
                } catch {
                    print("Error: \(error.localizedDescription)  creating audio player")
                }
                
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
