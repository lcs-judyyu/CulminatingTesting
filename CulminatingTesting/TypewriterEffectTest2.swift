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
    
    @State var speed = 0.03
        
        var body: some View {
            VStack {
                Text(text)
                    .frame(maxWidth: .infinity, maxHeight:.infinity, alignment: .topLeading)
                    .onAppear {
                        withAnimation(.default.delay(3)) {
                            typeWriter()
                        }
                    }
                    .onTapGesture {
                        speed = 0
                    }
            }
        }
        
        
        func typeWriter(at position: Int = 0) {
            if position == 0 {
                text = ""
            }
            if position < finalText.count {
                if finalText[position] == "\n" || finalText[position] == "," || finalText[position] == ":" {
                    DispatchQueue.main.asyncAfter(deadline: .now() + speed * 8) {
                        text.append(finalText[position])
                        typeWriter(at: position + 1)
                    }
                } else {
                    DispatchQueue.main.asyncAfter(deadline: .now() + speed) {
                        text.append(finalText[position])
                        typeWriter(at: position + 1)
                    }
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
