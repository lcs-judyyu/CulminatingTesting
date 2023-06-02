//
//  SettingsView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-01.
//

import SwiftUI

// Adapted from: https://johncodeos.com/how-to-create-a-popup-window-with-swiftui/
struct SettingsView: View {
    
    // MARK: Stored Properties
    @Binding var show: Bool
    
    var body: some View {
        
        ZStack {
            if show {
                // PopUp background color
                Color.black.opacity(show ? 0.4 : 0)
                    .edgesIgnoringSafeArea(.all)
                
                // PopUp Window
                VStack(alignment: .center, spacing: 15) {
                    
                    VStack {
                        
                        ZStack {
                            
                            Text("- SETTINGS -")
                                .padding(.top)
                            
                            HStack {
                                
                                Spacer()
                                
                                // Close button
                                Button(action: {
                                    
                                    // Dismiss the pop up
                                    withAnimation(.linear(duration: 0.1)) {
                                        show = false
                                        
                                    }
                                }, label: {
                                    Image(systemName: "xmark")
                                        .foregroundColor(Color.white)
                                        .font(.title)
                                        .frame(width: 30, height: 30)
                                        .padding(5)
                                        .border(.white)
                                        .cornerRadius(6)
                                    
                                })
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        
                        // Map
                        Image("Coast3")
                            .resizable()
                            .frame(height: 300)
                            .padding(.horizontal)
                        
                        // Divider
                        Divider()
                            .frame(width: 200, height: 1.5)
                            .overlay(.gray)
                        
                        HStack(spacing: 20) {
                            
                            // Restart button
                            Button(action: {
                                
                            }, label: {
                                HStack {
                                    Image(systemName: "arrow.counterclockwise")
                                    Text("Restart")
                                }
                            })
                            .buttonStyle(CustomButton())
                            
                            // Home button
                            Button(action: {
                                
                            }, label: {
                                HStack {
                                    Image(systemName: "house")
                                    Text("Home")
                                }
                            })
                            .buttonStyle(CustomButton())
                        }
                        .padding(.vertical)
                    }
                    
                }
                .frame(maxWidth: 320)
                .border(Color.white, width: 1)
                .background(Color.black)
            }
        }
    }
}

// Preview provider
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(show: .constant(true))
    }
}
