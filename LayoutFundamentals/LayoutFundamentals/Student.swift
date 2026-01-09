//
//  Student.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 20/12/25.
//

import SwiftUI

struct Student:Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var printId: String {
        id.uuidString
    }
    
    init (name: String, image: String) {
        self.name = name
        self.image = image
    }
}
