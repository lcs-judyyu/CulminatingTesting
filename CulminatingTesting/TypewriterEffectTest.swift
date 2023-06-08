//
//  TypewriterEffectTest.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-03.
//

import SwiftUI

struct TypeWriterText: View, Animatable {
    var string: String
    var count = 0

    var animatableData: Double {
        get { Double(count) }
        set { count = Int(max(0, newValue)) }
    }

    var body: some View {
        let stringToShow = String(string.prefix(count))
        Text(stringToShow)
    }
}

struct TypewriterEffectTest: View {
    @State private var value = 0

    let message = "There are two possible destinations where you can find resources to help you survive, where should you go?\n\nNote: it is an important decision which will influence the story development."
    
    let message2 = "There are two possible destinations where you can find resources to help you survive, where should you go?"
    

    var body: some View {
        ZStack {
            VStack {
                TypeWriterText(string: message, count: value)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TypeWriterText(string: message2, count: value)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
            .padding()
        }
        .onAppear {
            withAnimation(.linear(duration: 10)) {
                value = message.count
            }
        }
    }
}

struct TypewriterEffectTest_Previews: PreviewProvider {
    static var previews: some View {
        TypewriterEffectTest()
    }
}


