//
//  ContentView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-05-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(spacing: 15) {
                
                // Day & Location
                HStack {
                    
                    Text("Day 1")
                    
                    Spacer()
                    
                    Text("The Coast")
                    
                }
                .font(.title3)
                .padding(.horizontal)
                
                // Illustration
                Image("Coast3")
                    .resizable()
                    .scaledToFit()
                
                // Description
                Text("ENDING: You go inside the room and find a flashlight in the dark. You turn it on and find numerous rats in the hole in the corner. They all run out and attack you after being stimulated by the light source. Your weapon cannot fight against them. You can only give up all your food to escape. Any food left in the factory is contaminated. You die of starvation.")
                    .padding(.horizontal, 10)
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack (alignment: .center, spacing: 20) {
                        
                        // Choice 1
                        Button(action: {
                            
                        }, label: {
                            Spacer()
                            
                            Text("The Park")
                                .foregroundColor(.white)
                            
                            Spacer()
                        })
                        .buttonStyle(.borderedProminent)
                        
                        // Choice 2
                        Button(action: {
                            
                        }, label: {
                            Spacer()
                            
                            Text("The Hospital")
                                .foregroundColor(.white)
                            
                            Spacer()
                        })
                        .buttonStyle(.borderedProminent)
                        
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
            }
            .padding()
            
            Spacer()

            // Display changes in values
            Text("Energy - 1, Food + 3")
                .padding(.horizontal)

            // Divider
            Divider()
                .frame(height: 1.5)
                .overlay(.white)
            
            // Display values
            HStack(alignment: .top, spacing: 15) {
                
                Text("ME")
                    .font(.title3)
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        
                        // Energy
                        Text("Energy")
                        ZStack(alignment: .center) {
                            
                            // Completion meter
                            Rectangle()
                                .frame(width: 200, height: 22)
                                .foregroundColor(.gray)
                            
                            // Borders
                            Rectangle()
                                .stroke(.black, lineWidth: 2)
                                .frame(width: 200, height: 22)
                            Rectangle()
                                .stroke(.black, lineWidth: 2)
                                .frame(width: 120, height: 22)
                            Rectangle()
                                .stroke(.black, lineWidth: 2)
                                .frame(width: 40, height: 22)
                        }
                        
                    }
                    
                    // Mentality & Food
                    HStack {
                        
                        Text("Mentality: Healthy")
                            .padding(.trailing, 20)
                        
                        Image(systemName: "globe")
                        
                        Text(": 4")
                        
                    }
                }
                
                // Settings
                Image(systemName: "gear")
                    .scaleEffect(2)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
            
        }
        .padding(.bottom, 10)
        .edgesIgnoringSafeArea(.bottom)
    }
}

// Preview provider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
