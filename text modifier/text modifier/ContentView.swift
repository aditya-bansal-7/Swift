//
//  ContentView.swift
//  text modifier
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Aditya Bansal")
                .fontWeight(.bold).italic().padding()
            
            Text("""
                I am a Full Stack 
                developer specilized 
                in backend system.
                """)
            .multilineTextAlignment(.center)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
