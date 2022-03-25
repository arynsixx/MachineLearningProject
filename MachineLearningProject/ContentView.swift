//
//  ContentView.swift
//  MachineLearningProject
//
//  Created by Martina Esposito on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var startAudio : SoundAnalyzerController
    @State var tap = false
    
    var body: some View {
        VStack{
            Button{
                tap.toggle()
                
            } label: {
                if !tap {
                    Image(systemName: "circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 250))
                        .padding()
//                        .onTapGesture {
//                            vm.startRecording()
//                        }
                } else {
                    if startAudio.transcriberText == "happy" {
                        Image(systemName: "circle.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 250))
                            .padding()
    //                        .onTapGesture {
    //                            vm.stopRecording()
    //                        }
                    } else {
                        Image(systemName: "circle")
                            .foregroundColor(.red)
                            .font(.system(size: 250))
                            .padding()
    //                        .onTapGesture {
    //                            vm.stopRecording()
    //                        }
                    }
                }
            }
            
            if tap{
                Text(startAudio.transcriberText)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
