//
//  ContentView.swift
//  CustomModifier
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.red)
    }
}


struct Watermark: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottomTrailing){
                Text("Hello, world!").foregroundColor(.white)
                    .font(.caption)
                    .padding()
                    .background(Color.black.opacity(0.3))
            }
            .padding()
    }
}

extension View {
    func watermark(with text:String) -> some View {
        self.modifier(Watermark())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!").modifier(Title())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
