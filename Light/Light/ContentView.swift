//
//  ContentView.swift
//  Light
//
//  Created by Aditya Bansal on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var light: Bool = false
    var body: some View {
        
        Color.init(light ? .blue : .black)
        
        Button("Switch \(light ? "Off" : "On")"){
            light = !light
        }
        
    }
}

#Preview {
    ContentView()
}
