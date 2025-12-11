//
//  ContentView.swift
//  StylingUi
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI")
                .font(.title)
                .foregroundColor(.purple)
            Image(systemName: "star.fill")
                .font(.system(size: 50))
                .foregroundColor(.yellow)
            Color.blue
                .frame(height: 40)
                .clipShape(.capsule)
            Circle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .shadow(radius: 5)
            Button("Tap Me") {}
                .padding()
                .background(.blue.opacity(0.2))
                .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
