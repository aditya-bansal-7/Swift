//
//  ContentView.swift
//  musiccardf
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("music")
                            .resizable()
                            .cornerRadius(20)
                            .frame(height: 200)
                            .shadow(radius: 10).padding()
            Text("D").bold()
            
            Text("BY Dino James").foregroundStyle(.gray)
                
                
                
            Text("2025")
            .padding(4)
                .background(.blue.opacity(0.3))
                .cornerRadius(50)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
