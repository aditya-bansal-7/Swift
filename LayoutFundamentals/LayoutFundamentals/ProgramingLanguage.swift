//
//  ProgramingLanguage.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI


public struct ProgramingLanguage: View {
    public var body: some View {
        Text("Experties!").font(.largeTitle)
        
        HStack {
            Text("Java")
                .padding()
                .background(.green.opacity(0.3))
                .cornerRadius(15)
                
            Text("Swift").padding()
                .background(.blue.opacity(0.3))
                .cornerRadius(15)
            Text("Python").padding()
                .background(.purple.opacity(0.3))
                .cornerRadius(15)
        }
    }
}


#Preview {
    ProgramingLanguage()
}
