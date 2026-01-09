//
//  profile with badge.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct ProfileWithBadge: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding()
            
            Text("3").foregroundColor(.white).font(.caption)
                .clipShape(Circle())
                .padding(5)
                .background(.black).cornerRadius(10)
        }
    }
}

#Preview {
    ProfileWithBadge()
}
