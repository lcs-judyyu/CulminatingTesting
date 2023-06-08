//
//  SpeedSliderView.swift
//  CulminatingTesting
//
//  Created by Judy YU on 2023-06-08.
//

import SwiftUI

struct SpeedSliderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 20)

            Text("Slider")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("A control for selecting a value from a bounded linear range of values.")
                .italic()
                .padding(.bottom, 10)

            // Example usage #1
            //
            // Value set at 50 from a possible range of 0 to 100
            //
            // Range and the value can vary.
            //
            // Optionally, minimum and maximum labels can be provided.
            Text("With max and min labels")
                .bold()
                .padding(.bottom, 10)

            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            
            // Example usage #2
            //
            // Value set at 30 from a possible range of 0 to 40
            //
            // Range and the value can vary.
            Text("Without labels")
                .bold()
                .padding(.bottom, 10)

            Slider(value: .constant(30.0),
                   in: 0.0...40.0,
                   label: {
                        Text("Speed")
            })

        }
        .padding(.horizontal)
    }
}

struct SpeedSliderView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedSliderView()
    }
}
