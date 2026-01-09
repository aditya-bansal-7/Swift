//
//  fillStar.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI



struct FillStar : View {
    
    @State var star = 1
    var body: some View {
        HStack{
            ForEach(1..<6){
                i in
                Button {
                    star = i                } label: {
                    Image(systemName: "star")
                        .font(.largeTitle)
                        .symbolVariant(i <= star ? .fill :.none)
                }
                    

            }
        }
    }
}

#Preview {
    FillStar()
}
