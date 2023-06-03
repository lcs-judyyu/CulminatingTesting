//
//  TypewriterEffectTest2.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-03.
//

import SwiftUI

struct TypewriterEffectTest2: View {
    @State var text: String = ""
        let finalText: String = "There are two possible destinations where you can find resources to help you survive, where should you go?\n\nNote: it is an important decision which will influence the story development."
        
        var body: some View {
            VStack {
                Text(text)
                    .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .topLeading)
                    .onAppear {
                        typeWriter()
                    }
            }
        }
        
        
        func typeWriter(at position: Int = 0) {
            if position == 0 {
                text = ""
            }
            if position < finalText.count {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                    text.append(finalText[position])
                    typeWriter(at: position + 1)
                }
            }
        }
}

struct TypewriterEffectTest2_Previews: PreviewProvider {
    static var previews: some View {
        TypewriterEffectTest2()
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
