//
//  DottedDieView.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/15/20.
//

import SwiftUI

struct DotView: View {
    let size: CGFloat
    var body: some View {
        Circle()
            .frame(width: size, height: size)
    }
}

struct DottedDieView: View {
    let value: Int
    
    var quantity: Int {
        (value - 1) % 25 + 1
    }
    
    var color: Color {
        [.white, .gray, .green, .red][(value - 1) / 25]
    }
    
    var stacks: [[Bool]] {
        let arrangement = DotArrangement(quantity: quantity)
        return [arrangement.farLeftDots,
                arrangement.midLeftDots,
                arrangement.centerDots,
                arrangement.midRightDots,
                arrangement.farRightDots]
    }
    
    func padding(with geo: GeometryProxy) -> CGFloat {
        if DotArrangement(quantity: quantity).in3x3 {
            return geo.size.width * 0.15
        } else {
            return geo.size.width * 0.16
        }
    }
    
    func spacing(with geo: GeometryProxy) -> CGFloat {
        if DotArrangement(quantity: quantity).in3x3 {
            return geo.size.width * 0.13
        } else {
            return geo.size.width * 0.15
        }
    }
    
    func columnOffset(for column: Int, with geo: GeometryProxy) -> CGFloat {
        padding(with: geo) + CGFloat(column) * spacing(with: geo)
    }
    
    func rowOffset(for row: Int, with geo: GeometryProxy) -> CGFloat {
        padding(with: geo) + CGFloat(row) * spacing(with: geo)
    }
    
    func dotSize(with geo: GeometryProxy) -> CGFloat {
        let totalWidth = geo.size.width
        return DotArrangement(quantity: quantity).in3x3 ?
            totalWidth * 0.18 : totalWidth * 0.10
    }
    
    var body: some View {
        GeometryReader { geo in
            RoundedRectangle(cornerRadius: geo.size.width * 0.15)
                .strokeBorder(Color.black, lineWidth: geo.size.width * 0.08)
                .background(RoundedRectangle(cornerRadius: geo.size.width * 0.15).fill(color))

            ForEach(0 ..< 5) { columnIndex in
                ForEach(0 ..< stacks[columnIndex].count) { rowIndex in
                    if stacks[columnIndex][rowIndex] {
                        DotView(size: dotSize(with: geo))
                            .offset(x: columnOffset(for: columnIndex, with: geo),
                                    y: rowOffset(for: rowIndex, with: geo))
                    }
                }
            }
        }
    }
}

struct DottedDieView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                ForEach(1 ..< 11) {
                    DottedDieView(value: $0)
                        .frame(width: 50, height: 50)
                }
            }
            HStack {
                ForEach(11 ..< 21) {
                    DottedDieView(value: $0)
                        .frame(width: 50, height: 50)
                }
            }
            HStack {
                ForEach(21 ..< 26) {
                    DottedDieView(value: $0)
                        .frame(width: 50, height: 50)
                }
                Spacer()
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
