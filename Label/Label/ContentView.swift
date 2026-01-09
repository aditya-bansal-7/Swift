//
//  ContentView.swift
//  Label
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 300)
                .cornerRadius(20)
                .overlay(
                    VStack {
                        Circle() .foregroundStyle(.red)
                        Circle() .foregroundStyle(.yellow)
                        Circle() .foregroundStyle(.green)
                    }.padding(10)
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
