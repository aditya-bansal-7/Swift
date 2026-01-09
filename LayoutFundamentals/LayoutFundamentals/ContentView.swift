//
//  ContentView.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            Text("Methi ki sabji").font(.title)
            Text("""
            This is an Indian dish with a 
            mixer of methi and aloo.
            """).font(.caption)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
