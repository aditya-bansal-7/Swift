//
//  profile card.swift
//  restaurant
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        VStack(spacing: 10) {
            
            ZStack(alignment: .topTrailing) {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                    .shadow(radius: 10)
                
                Image("onepiece")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 70)
                    .clipShape(Circle())
                    .offset(x: 17,y:-20)
            }
            
            Text("Aditya Bansal").font(.title).bold().padding(5)
            
            Text("23SCSE1010264").font(.subheadline).foregroundColor(.secondary)
            
            
            
            Text("""
                Hi! I am a fullstack 
                developer specilized 
                in backend system.
                """).multilineTextAlignment(.leading).font(.subheadline).foregroundStyle(
                    .secondary
            )
            HStack {
                Text("Experties : ")
                Text("Java")
                    .padding(10)
                    .background(.green.opacity(0.3))
                    .cornerRadius(15)
                    
                Text("Swift").padding(10)
                    .background(.blue.opacity(0.3))
                    .cornerRadius(15)
                Text("Python").padding(10)
                    .background(.purple.opacity(0.3))
                    .cornerRadius(15)
            }.padding()
            
        }.padding()
    }
}


#Preview {
    ProfileCard()
}
