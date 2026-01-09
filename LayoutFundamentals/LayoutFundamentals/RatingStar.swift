//
//  RatingStar.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI

struct RatingStar: View {
    var body: some View {
        
        HStack {
            Image(systemName: "star.fill").foregroundStyle(.yellow)
            Text("4.5")
        }
    }
}

#Preview {
    RatingStar()
}
