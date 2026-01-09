//
//  ContentView.swift
//  ParentChild
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Title")
                .foregroundStyle(.blue)
                .font(.title)
                .background(.red)
            Text("Subtitle")
                .foregroundStyle(.green)
        }
        .padding()
        .background(.yellow)
    }
}

#Preview {
    ContentView()
}
