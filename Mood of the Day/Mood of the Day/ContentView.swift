//
//  ContentView.swift
//  Mood of the Day
//
//  Created by Aditya Bansal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var mood = "Happy!"
    
    var body: some View {
        HStack {
            
            Image(systemName: "face.smiling")
            
            Text(mood)
                
            
                
            
        }.padding(20)
            .background(.yellow.opacity(0.5))
            .cornerRadius(50)
            .font(.system(size: 50))
    }
}

#Preview {
    ContentView()
}
