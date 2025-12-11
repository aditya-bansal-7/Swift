//
//  ContentView.swift
//  30minTimer
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle().frame(width:200).foregroundStyle(
                LinearGradient(
                    gradient: Gradient(
                        colors: [.blue,.purple]
                    ),startPoint: .top,
                    endPoint: .bottom
                )
            )
            .overlay(
                VStack {
                    Text("30")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(<#T##insets: EdgeInsets##EdgeInsets#>)
                    
                    Text("min").foregroundStyle(.white)
                }.padding()
            )
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
