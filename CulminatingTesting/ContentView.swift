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
            
            VStack(spacing: 20) {
                
                HStack {
                    
                    Text("Day 1")
                    Spacer()
                    Text("The Coast")
                    
                }
                .font(.title3)
                
                Image("Coast1")
                    .resizable()
                    .scaledToFit()
                
                Text("There are two possible destinations where you can find resources to help you survive, where should you go? \n\nNote: it is an important decision which will influence the story development.")
                    .padding(.horizontal, 10)
                
                //Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack (alignment: .center, spacing: 20) {
                        
                        Button(action: {
                            
                        }, label: {
                            Spacer()
                            
                            Text("The Park")
                                .foregroundColor(.white)
                            
                            Spacer()
                        })
                        .buttonStyle(.borderedProminent)
                        
                        Button(action: {
                            
                        }, label: {
                            Spacer()
                            
                            Text("The Hospital")
                            
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
            
            Text("Energy - 1, Food + 3")
                .padding()
            
            Divider()
                .frame(height: 1.5)
                .overlay(.white)
            
            HStack(alignment: .top, spacing: 15) {
                
                Text("ME")
                    .font(.title3)
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        
                        Text("Energy")
                        ZStack(alignment: .center) {
                            Rectangle()
                                .frame(width: 200, height: 22)
                                .foregroundColor(.gray)
                            
                            //borders
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
                    HStack {
                        
                        Text("Mentality: Healthy")
                            .padding(.trailing, 20)
                        Image(systemName: "globe")
                        Text(": 4")
                        
                    }
                }
                
                Image(systemName: "gear")
                    .scaleEffect(2)
                    .padding(.leading, 10)
                    .padding(.top, 10)
            }
            .padding()
            
        }
        .padding(.bottom, 10)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
