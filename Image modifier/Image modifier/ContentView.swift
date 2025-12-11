//
//  ContentView.swift
//  Image modifier
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                    Image("Moon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(.blue,lineWidth: 6)
                        )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
