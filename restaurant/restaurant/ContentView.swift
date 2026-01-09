//
//  ContentView.swift
//  restaurant
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
            ZStack(alignment: .topTrailing) {
                Image("food").resizable()
                    .scaledToFit()
                
                    .shadow(radius: 10)
                
                
                Text("Veg").padding(8).background(.green).cornerRadius(20)
                    .foregroundColor(.white)
                    .offset(x: -10, y: 10)
            }.cornerRadius(15)
            
            HStack(alignment: .center, spacing: 80){
                Text("Veggie Woofer").font(.title)
                HStack {
                    Image(systemName: "star.fill").foregroundStyle(.yellow)
                    Text("4.5")
                }
            }
            Text("")
            
            HStack(alignment: .center, spacing: 90){
                Text("""
    Hi! I am a fullstack 
    developer specilized 
    in backend system.
    """).multilineTextAlignment(.leading).font(.caption).foregroundStyle(
        .secondary
    )
                HStack {
                    Image(systemName: "indianrupeesign").font(.title)
                    Text("149").font(.largeTitle)
                }
            }
            
        }
        .padding().padding()
    }
}

#Preview {
    ContentView()
}
