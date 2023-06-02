//
//  CompletionMeterView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-02.
//

import SwiftUI
import UIKit

struct CompletionMeterView: View {
    
    // MARK: Stored properties
    
    // Show up to x percentage
    @State private var fillToWidth: CGFloat = 0.0
    
    // Controls the amount of trim to show
    let energy: CGFloat
    
    // Set timer
    let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect()
    
    let width: CGFloat = 200.0
    
    let height: CGFloat = 22.0
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // Background
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(.gray)
            
            // Value
            Rectangle()
                .frame(width: fillToWidth, height: height)
                .foregroundColor(.white)
                .onChange(of: energy) { newEnergy in
                    withAnimation(.easeInOut(duration: 0.2)) {
                        fillToWidth = CGFloat(energy / 10) * width
                    }
                }
                .onReceive(timer) { _ in
                    
                    // Stop the timer
                    timer.upstream.connect().cancel()
                    
                    withAnimation(.easeInOut(duration: 0.001)) {
                        fillToWidth = energy / 10 * width
                    }
                }
            
            ZStack(alignment: .center) {
                
                // Borders
                ForEach(0..<3) { i in
                    Rectangle()
                        .stroke(.black, lineWidth: 2)
                        .frame(width: width - CGFloat(i * 80), height: height)
                }
            }
            
//            Stepper("", value: $energy, in: 0...10)
//            Text("is \(energy)")
//
//            Text("\(Int(fillToWidth))/200")
//                .padding(.leading, 50)
            
        }
        .padding(.vertical)
    }
}

struct CompletionMeterView_Previews: PreviewProvider {
    static var previews: some View {
        CompletionMeterView(energy: 7.0)
    }
}
