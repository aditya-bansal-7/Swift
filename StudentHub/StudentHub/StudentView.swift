//
//  StudentView.swift
//  StudentHub
//
//  Created by Payal Singh on 10/12/25.
//

import SwiftUI

struct StudentView: View {
    var curStu = Student(firstName: "Payal", lastName: "Singh", age: 25)
    var body: some View {
        VStack {
            HStack {
                Text(curStu.firstName)
                Text(curStu.lastName)
            }
            Text("\(curStu.age) yrs")
        }
    }
}

#Preview {
    StudentView()
}
