//
//  ContentView.swift
//  DottedDieArrangement
//
//  Created by Thane Heninger on 11/8/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DottedDiceView2()
                .tabItem { Text("List") }
            
            DottedDiceView3()
                .tabItem { Text("3-Rows") }
            
            DottedDiceView4()
                .tabItem { Text("Any") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
