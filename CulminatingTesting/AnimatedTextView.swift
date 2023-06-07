//
//  AnimatedTextView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-07.
//

import SwiftUI

struct AnimatedTextView: View {
    
    @State var color = Color.white.opacity(0.8)
    
    @State var size = 100.0
    
    @State var blurOpacity = 0.6
    
    @State var blurSize = 70.0
    
    var body: some View {
        ZStack {
            
            Ellipse()
                .foregroundColor(.white.opacity(blurOpacity))
                .frame(width: 300, height: 200)
                .blur(radius: blurSize)
            
            VStack {
                Text("RAD")
                    .italic()
                Text("ZONE")
            }
            .font(.custom("Copperplate", fixedSize: size))
            .bold()
            .foregroundColor(color)
            .shadow(radius: 10)

        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                size = 100.1
                color = .white.opacity(0.5)
                blurOpacity = 0.5
                blurSize = 67.0
            }
        }

    }
}

struct AnimatedTextView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTextView()
    }
}
