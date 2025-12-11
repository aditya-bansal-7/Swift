//
//  ContentView.swift
//  Mini App Header
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color.blue
                .frame(height: 60)
                .overlay(
                    Text("Rent Zone")
                        .font(.title)
                        .foregroundColor(.white)
                )
            
        }
    }
}

#Preview {
    ContentView()
}
