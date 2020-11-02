//
//  ContentView.swift
//  MediumMigration
//
//  Created by Austin Roach on 11/2/20.
//

import SwiftUI

struct ContentView: View {
    
    @State public var freqValue: Float = 50
    @State public var ampValue: Float = 0.5
    @State public var isTicking: Bool = false
    
    
    var body: some View {
        VStack() {
        Slider(value: $freqValue, in: 1 ... 10000)
        Slider(value: $ampValue, in: 0 ... 1)
        Toggle(isOn: $isTicking) {
            Text("Play/Pause")
        }
        Button(action: {
            playPause()
        }) {
            Text("Start")
        }
        
        Text("Hello, world!")
            .padding()
        }
       
    }
    func setSynthParametersFrom() {
        Oscillator.amplitude = Float(ampValue)
        Synth.shared.frequency = Float(freqValue)
    }
   
    func sliderUpdate() {
        if Oscillator.amplitude != Float(ampValue) ||
            Synth.shared.frequency != Float(freqValue) {
            setSynthParametersFrom()
        }
    }
    
    
    func playPause() {
        if isTicking == true {
        setSynthParametersFrom()
        setPlaybackStateTo(true)
        } else if isTicking == false {
            setSynthParametersFrom()
            setPlaybackStateTo(false)
        }
    }
    func setPlaybackStateTo(_ state: Bool) {
        Synth.shared.volume = state ? 0.5 : 0
        if !state { Synth.shared.frequency = 0 }
    }
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
