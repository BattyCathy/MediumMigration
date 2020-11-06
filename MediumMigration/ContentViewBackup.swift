//
//  ContentView.swift
//  MediumMigration
//
//  Created by Austin Roach on 11/2/20.
//
/*
import SwiftUI

struct ContentView: View {
    
    @State var bpmValue: Float = 0.5
    @State var ampValue: Float = 0.5
    @State var isTicking: Bool = false
  

    var body: some View {
       
        
        
        VStack() {
            
            Slider(value: Binding(
                get: {
                    self.bpmValue
                },
                set: {(newValue) in
                      self.bpmValue = newValue
                      self.setSynthParametersFrom()
                }
            ))
          Text("\(Float(bpmValue) * Float(topTempo - bottomTempo) + Float(bottomTempo))")

     /*
        Slider(value: $ampValue, in: 0 ... 1)
 */
        Toggle(isOn: $isTicking) {
            Text("Play/Pause")
        }
        Button(action: {
            setAsSquare()
            playPause()
            
                    }) {
            Text("Start")
        }
        
        }
    
    }
    var topTempo = 300
    var bottomTempo = 20
    
   

    func setAsSquare() {
        Synth.shared.setWaveformTo(Oscillator.square)
    }
    
    func setSynthParametersFrom() {
        Oscillator.amplitude = Float(ampValue)
        Synth.shared.frequency = (Float(bpmValue) * Float(topTempo - bottomTempo) + Float(bottomTempo)) / 30
    }
   
   
    
    func playPause() {
        if isTicking == true {
        setPlaybackStateTo(true)
        } else if isTicking == false {
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
*/
