//
//  multipleprofile.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI

struct MultipleProfile: View {
    
    var students: [Student] = [Student(name: "Aditya Bansal", image: "profile"),
                               Student(name: "Dhruv Tyagi", image: "profile")]
    var body: some View {
        VStack {
            ForEach(students){x in
                ProfileHorizontal(student: x)
            }
        }
    }
}

#Preview {
    MultipleProfile()
}
