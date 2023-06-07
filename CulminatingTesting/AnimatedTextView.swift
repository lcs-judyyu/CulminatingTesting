//
//  AnimatedTextView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-07.
//

import SwiftUI

struct AnimatedTextView: View {
    
    @State var color = Color.white
    
    @State var size = 100.0
    
    var body: some View {
        VStack {
            Text("RAD")
                .italic()
            Text("ZONE")
        }
        .font(.custom("Copperplate", fixedSize: size))
        .bold()
        .foregroundColor(color)
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                size = 100.5
            }
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                color = .gray
            }
        }
    }
}

struct AnimatedTextView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTextView()
    }
}
