//
//  SoundsBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Evgeniy Safin on 15.07.2022.
//

import SwiftUI
import AVKit

class SoundManager {
    
    static var instance = SoundManager() // Singleton
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case tada
        case badum
    }
    
    func playSound(sound: SoundOption) {
        //guard let url = URL(string: "") else { return }
        guard let url = Bundle.main.url(
            forResource: sound.rawValue,
            withExtension: ".mp3")
        else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

//class SoundManager: ObservableObject {
//    //
//}

struct SoundsBootcamp: View {
    
    //@StateObject var soundManager = SoundManager()
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Play sound 1") {
                SoundManager.instance.playSound(sound: .tada)
            }
            Button("Play sound 2") {
                SoundManager.instance.playSound(sound: .badum)
            }
        }
    }
}

struct SoundsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundsBootcamp()
    }
}
