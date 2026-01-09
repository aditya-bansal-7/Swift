//
//  vegOrnonVeg.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct vegOrnonVeg: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("food").resizable()
                .scaledToFit()
                
                .shadow(radius: 10)
                
            
            Text("Veg").padding(8).background(.green).cornerRadius(20)
                .foregroundColor(.white)
                .offset(x: -10, y: 10)
        }.padding(40)
    }
}


#Preview {
    vegOrnonVeg()
}
