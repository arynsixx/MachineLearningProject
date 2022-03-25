//
//  MachineLearningProjectApp.swift
//  MachineLearningProject
//
//  Created by Martina Esposito on 22/03/22.
//

import SwiftUI

@main
struct MachineLearningProjectApp: App {
    
    @StateObject var sound = SoundAnalyzerController()
    
    var body: some Scene {
        WindowGroup {
            ContentView(startAudio: sound)
        }
    }
}
