//
//  DottedDiceView3.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/15/20.
//

import SwiftUI

struct DottedDiceView3: View {
    @State private var size = CGFloat(50)
    
    var body: some View {
        VStack {
            ScrollView([.horizontal, .vertical]) {
                VStack(alignment: .leading) {
                    HStack {
                        ForEach(1 ..< 11) {
                            DottedDieView(value: $0)
                        }
                        .frame(width: size, height: size)
                    }
                    HStack {
                        ForEach(11 ..< 21) {
                            DottedDieView(value: $0)
                        }
                        .frame(width: size, height: size)
                    }
                    HStack {
                        ForEach(21 ..< 26) {
                            DottedDieView(value: $0)
                        }
                        .frame(width: size, height: size)
                    }
                }
            }
            Slider(value: $size, in: 10...150)
                .padding()
        }
    }
}

struct DottedDiceView3_Previews: PreviewProvider {
    static var previews: some View {
        DottedDiceView3()
    }
}
