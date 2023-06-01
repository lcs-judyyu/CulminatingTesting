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
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                
                                // Dismiss the pop up
                                withAnimation(.linear(duration: 0.1)) {
                                    show = false
                                    
                                }
                            }, label: {
                                
                                ZStack(alignment: .center) {
                                    
                                    Rectangle()
                                        .stroke(.white, lineWidth: 1)
                                        .frame(width: 20, height: 20)
                                    
                                    Text("x")
                                        //.frame(height: 10, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .font(.body)
                                }
                                
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                        
                        Divider()
                        
                        Image("Coast3")
                            .resizable()
                            .frame(height: 300)
                        
                        HStack(spacing: 20) {
                            
                            // Start Over
                            Button(action: {
                                
                            }, label: {
                                Text("Start Over")
                            })
                            .buttonStyle(.automatic)
                            
                            Button(action: {
                               
                            }, label: {
                                Text("Home")
                            })
                            .buttonStyle(.automatic)
                        }
                    }
                    .padding()

                }
                .frame(maxWidth: 320)
                .border(Color.white, width: 1)
                .background(Color.black)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(show: .constant(true))
    }
}
