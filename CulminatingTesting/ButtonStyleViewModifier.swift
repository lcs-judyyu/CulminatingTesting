//
//  ButtonStyleViewModifier.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-01.
//

import Foundation
import SwiftUI
import AudioToolbox

struct SoundEffect: Hashable {
    let id: SystemSoundID
    let name: String

    func play() {
        AudioServicesPlaySystemSoundWithCompletion(id, nil)
    }
}

// Adapted from: https://www.hackingwithswift.com/quick-start/swiftui/customizing-button-with-buttonstyle
// Button style
struct CustomButton: ButtonStyle {
    
    typealias SystemSoundID = UInt32
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .buttonStyle(.plain)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .foregroundColor(.white)
            .background(configuration.isPressed ? .gray.opacity(0.2) : .black)
            .border(.white)
            .cornerRadius(6)

    }
}
