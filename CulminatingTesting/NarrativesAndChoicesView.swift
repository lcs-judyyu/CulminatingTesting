//
//  NarrativesAndChoicesView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-03.
//

import SwiftUI

struct NarrativesAndChoicesView: View {
    
    // MARK: Stored properties
    @State var narrative: String = "There are two possible destinations where you can find resources to help you survive, where should you go?\n\nNote: it is an important decision which will influence the story development."
    
    @State var choiceOne: String = "The Park"
    
    @State var choiceTwo: String = "The Hospital"
    
    @State var choiceThree: String = "Third Choice"
    
    @State var numberOfEdges: Int = 3
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // Narrative
            Text(narrative)
                .padding(.horizontal, 10)
            
            Spacer()
            
            ZStack(alignment: .bottom) {
                
                // Zero edge (ending)
                HStack (alignment: .center, spacing: 20) {
                    
                    // Choice 1
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Spacer()
                            
                            Image(systemName: "arrow.counterclockwise")
                            Text("Restart")
                            
                            Spacer()
                        }
                    })
                    .buttonStyle(CustomButton())
                    
                    // Choice 2
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Spacer()
                            
                            Image(systemName: "house")
                            Text("Back to Home")
                            
                            Spacer()
                        }
                    })
                    .buttonStyle(CustomButton())
                    
                    //Spacer()
                    
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .opacity(numberOfEdges == 0 ? 1 : 0)
                
                // One edge
                
                
                // Two choices (edges)
                HStack {
                    
                    Spacer()
                    
                    VStack (alignment: .center, spacing: 20) {
                        
                        // Choice 1
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                
                                Spacer()
                                
                                Text(choiceOne)
                                
                                Spacer()
                            }
                        })
                        .buttonStyle(CustomButton())
                        
                        // Choice 2
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                Spacer()
                                
                                Text(choiceTwo)
                                
                                Spacer()
                            }
                        })
                        .buttonStyle(CustomButton())
                    }
                    
                    //Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .opacity(numberOfEdges == 2 ? 1 : 0)
                
                // Three choices (edges)
                HStack {
                    
                    Spacer()
                    
                    VStack (alignment: .center, spacing: 20) {
                        
                        // Choice 1
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                
                                Spacer()
                                
                                Text(choiceOne)
                                
                                Spacer()
                            }
                        })
                        .buttonStyle(CustomButton())
                        
                        // Choice 2
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                Spacer()
                                
                                Text(choiceTwo)
                                
                                Spacer()
                            }
                        })
                        .buttonStyle(CustomButton())
                        
                        // Choice 3
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                Spacer()
                                
                                Text(choiceThree)
                                
                                Spacer()
                            }
                        })
                        .buttonStyle(CustomButton())
                        
                    }
                    
                    //Spacer()
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .opacity(numberOfEdges == 3 ? 1 : 0)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct NarrativesAndChoicesView_Previews: PreviewProvider {
    static var previews: some View {
        NarrativesAndChoicesView()
    }
}
