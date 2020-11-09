//
//  SFSymbolsDiceView.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/8/20.
//

import SwiftUI

struct OneThroughSixDieView: View {
    var body: some View {
        HStack {
            ForEach(1 ..< 7) {
                Image(systemName: "die.face.\($0)")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
    }
}

struct ClipRect: Shape {
    let fromLeft: Bool
    let fromTop: Bool
    let hRatio: CGFloat
    let vRatio: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path(CGRect(x: fromLeft ? 0 : rect.width * (1 - hRatio),
                    y: fromTop ? 0 : rect.height * (1 - vRatio),
                    width: rect.width * hRatio,
                    height: rect.height * vRatio))
    }
}

struct LargeDieView: View {
    let hRatio = CGFloat(0.65)
    let vRatio = CGFloat(0.84)
    
    var body: some View {
        ZStack {
            ZStack(alignment: .topLeading) {
                Image(systemName: "die.face.6")
                    .resizable()
                    .clipShape(ClipRect(fromLeft: true,
                                        fromTop: true,
                                        hRatio: hRatio,
                                        vRatio: vRatio))
                    .alignmentGuide(.top, computeValue: { dimension in
                        dimension[.top]
                    })
                Image(systemName: "die.face.6")
                    .resizable()
                    .clipShape(ClipRect(fromLeft: true,
                                        fromTop: false,
                                        hRatio: hRatio,
                                        vRatio: vRatio))
                    .offset(y: 25)
                Image(systemName: "die.face.6")
                    .resizable()
                    .clipShape(ClipRect(fromLeft: false,
                                        fromTop: true,
                                        hRatio: hRatio,
                                        vRatio: vRatio))
                    .offset(x: 25)
                Image(systemName: "die.face.6")
                    .resizable()
                    .clipShape(ClipRect(fromLeft: false,
                                        fromTop: false,
                                        hRatio: hRatio,
                                        vRatio: vRatio))
                    .offset(x: 25, y: 25)
            }
            .scaleEffect(0.62)
            .offset(x: -8, y: -8)
            
//            Image(systemName: "die.face.6")
//                .resizable()
//                .offset(x: 50)
        }
//        .opacity(0.5)
    }
}

struct SFSymbolsDiceView: View {
    var seven: some View {
        ZStack {
            Image(systemName: "die.face.6")
                .resizable()
            Image(systemName: "die.face.1")
                .resizable()
        }
    }
    
    var eight: some View {
        ZStack {
            Image(systemName: "die.face.6")
                .resizable()
            Image(systemName: "die.face.6")
                .resizable()
                .rotationEffect(.degrees(90))
        }
    }
    
    var nine: some View {
        ZStack {
            eight
            Image(systemName: "die.face.1")
                .resizable()
        }
    }
    
    var body: some View {
        VStack {
            OneThroughSixDieView()
            HStack {
                Group {
                    seven
                    eight
                    nine
                }
                .frame(width: 50, height: 50)
            }
            LargeDieView()
                .frame(width: 50, height: 50)
        }
    }
}

struct SFSymbolsDiceView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsDiceView()
    }
}
