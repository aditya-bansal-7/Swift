//
//  ContentView.swift
//  cardImage
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle().frame(height: 300).cornerRadius(20).foregroundStyle(.gray)
                .overlay(
                    VStack(alignment: .leading) {
                        Image("cloud")
                            .resizable()
                            .cornerRadius(20)
                            .frame(height: 200)
                        Text("Cloudy").foregroundStyle(.white).font(.title)
                        Text("21").foregroundStyle(.white).font(.title2)
                    }.padding()
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
