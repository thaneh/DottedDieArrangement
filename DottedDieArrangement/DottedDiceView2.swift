//
//  DottedDiceView2.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/15/20.
//

import SwiftUI

struct DottedDiceView2: View {
    @State private var size = CGFloat(50)
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(1 ..< 26) { count in
                    HStack {
                        Group {
                            if count <= 6 {
                                Image(systemName: "die.face.\(count)")
                                    .resizable()
                            } else {
                                Text("\(count)").font(.largeTitle)
                            }
                            
                            DottedDieView(value: count)
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

struct DottedDiceView2_Previews: PreviewProvider {
    static var previews: some View {
        DottedDiceView2()
    }
}
