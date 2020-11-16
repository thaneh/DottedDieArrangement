//
//  DottedDiceView4.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/15/20.
//

import SwiftUI

struct DottedDiceView4: View {
    @State private var quantity = 1.0
    
    var description: String {
        if Int(quantity) == 1 {
            return "1 side"
        } else {
            return "\(Int(quantity)) sides"
        }
    }
    
    var body: some View {
        VStack {
            Slider(value: $quantity, in: 1...100)
            .padding()
            
            Text(description)
                .font(.largeTitle)
            
            Button(action: {
                quantity = Double.random(in: 1...100)
            }) {
                Text("Random")
            }
            
            Spacer()
            
            DottedDieView(value: Int(quantity))
                .scaledToFit()
                .padding()
        }
    }
}

struct DottedDiceView4_Previews: PreviewProvider {
    static var previews: some View {
        DottedDiceView4()
    }
}
