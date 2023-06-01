//
//  GamingView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-05-29.
//

import SwiftUI

struct GamingView: View {
    // MARK: Stored properties
    @State private var showPopUp: Bool = false
    
    @State var location: String = "The Coast"
    
    @State var mentality: Int = 8
    
    @State var narrative: String = ""
    
    // MARK: Computed properties
    var mentalityState: String {
        if mentality <= 2 {
            return "Insane"
        } else if mentality <= 5 {
            return "Worried"
        } else if mentality <= 9 {
            return "Healthy"
        } else {
            return "Good"
        }
    }
    
    var illustrationName: String {
        if location.contains("Coast") {
            return "Coast"
        } else if location.contains("Park") {
            return "Park"
        } else if location.contains("Hospital") {
            return "Hospital"
        } else {
            return ""
        }
    }
    
    // MARK: Body
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                    
                    VStack(spacing: 15) {
                        
                        // Day & Location
                        HStack {
                            
                            Text("Day 1")
                            
                            Spacer()
                            
                            Text("The Coast")
                            
                        }
                        .padding(.horizontal)
                        
                        // Illustration
                        Image("Coast3")
                            .resizable()
                            .scaledToFit()
                        
                        // Description
                        Text("There are two possible destinations where you can find resources to help you survive, where should you go?\n\nNote: it is an important decision which will influence the story development.")
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
                                
                                // Choice 3
                                Button(action: {
                                    
                                }, label: {
                                    Spacer()
                                    
                                    Text("Third choice")
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
                                
                                Text("Mentality: \(mentalityState)")
                                    .padding(.trailing, 20)
                                
                                Image(systemName: "globe")
                                
                                Text(": 4")
                                
                            }
                        }
                        
                            // Settings
                            Button(action: {
                                    withAnimation(.linear(duration: 0.3)) {
                                        showPopUp.toggle()
                                    }
                            }, label: {
                                Image(systemName: "gear")
                                    .scaleEffect(2)
                                    .foregroundColor(.white)
                            })
                            .padding([.leading, .top], 10)

                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
            }
            .padding(.bottom, 10)
            .edgesIgnoringSafeArea(.bottom)
            
            SettingsView(show: $showPopUp)
        }

    }
}

// Preview provider
struct GamingView_Previews: PreviewProvider {
    static var previews: some View {
        GamingView()
            .preferredColorScheme(.dark)
    }
}
