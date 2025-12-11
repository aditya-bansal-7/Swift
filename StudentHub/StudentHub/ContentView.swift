//
//  ContentView.swift
//  StudentHub
//
//  Created by Payal Singh on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Students").font(.largeTitle)
            StudentView(curStu: Student(firstName: "Payal", lastName: "Singh", age: 25))
                        
        }
    }
}

#Preview {
    ContentView()
}
