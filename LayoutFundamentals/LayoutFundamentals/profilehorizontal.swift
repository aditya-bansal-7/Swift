//
//  profilehorizontal.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI

struct ProfileHorizontal: View {
    var student: Student
    var body: some View {
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
                Text(student.name).bold().font(.title)
                Text(student.printId).font(.caption)
            }
            
        }
    }
}
