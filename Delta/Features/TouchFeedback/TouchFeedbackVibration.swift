//
//  TouchFeedbackVibration.swift
//  Delta
//
//  Created by Chris Rittenhouse on 4/29/23.
//  Copyright © 2023 Lit Development. All rights reserved.
//

import SwiftUI

import Features

struct TouchFeedbackVibrationOptions
{
    @Option(name: "Buttons",
            description: "Vibrate on button press.")
    var buttonsEnabled: Bool = true
    
    @Option(name: "Control Sticks",
            description: "Vibrate on control stick motion.")
    var sticksEnabled: Bool = true
    
    @Option(name: "Release",
            description: "Vibrate on input release.")
    var releaseEnabled: Bool = true
    
    @Option(name: "Strength", description: "The strength of vibrations.", detailView: { strength in
        VStack {
            HStack {
                Text("Strength: \(strength.wrappedValue * 100, specifier: "%.f")%")
                Spacer()
            }
            HStack {
                Text("5%")
                Slider(value: strength, in: 0.05...1.00, step: 0.05)
                Text("100%")
            }
        }.displayInline()
    })
    var strength: Double = 1.0
}
