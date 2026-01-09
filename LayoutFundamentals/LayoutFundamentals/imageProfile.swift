//
//  imageProfile.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct imageProfile: View {
    var body: some View {
        
        VStack(spacing: 10) {
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding()
            
            Text("Aditya Bansal").bold().font(.title)
            
            Text("23scse1010264").font(.caption)
            
            Text("""
Hi! I am a fullstack 
developer specilized 
in backend system.
""").multilineTextAlignment(.center).font(.caption2).foregroundStyle(.secondary)
        }
        .padding(20)
        .background(.blue.opacity(0.3))
        .cornerRadius(20)
        
        
        Text("").padding()
        
        
        HStack {
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Aditya Bansal").bold().font(.title)
                Text("23scse1010264").font(.caption)
            }
            
        }
    }
}

#Preview {
    imageProfile()
}
