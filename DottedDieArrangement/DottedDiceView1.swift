//
//  DottedDiceView1.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/15/20.
//

import SwiftUI

struct DottedDiceView1: View {
    @State private var size = CGFloat(50)
    
    var dotColumn: some View {
        VStack(spacing: size * 0.1) {
            Group {
                Circle()
                Circle()
                Circle()
            }
            .frame(width: size * 0.18)
        }
    }
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(1 ..< 7) { count in
                    HStack {
                        Group {
                            Image(systemName: "die.face.\(count)")
                                .resizable()
                            ZStack {
                                RoundedRectangle(cornerRadius: size * 0.15)
                                    .strokeBorder(Color.black, lineWidth: size * 0.08)
                                
                                HStack(spacing: size * 0.08) {
                                    dotColumn
                                    dotColumn
                                    dotColumn
                                }
                                .padding(size * 0.16)
                            }
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

struct DottedDiceView1_Previews: PreviewProvider {
    static var previews: some View {
        DottedDiceView1()
    }
}
