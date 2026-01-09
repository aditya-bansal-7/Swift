//
//  Textboarder.swift
//  CustomModifier
//
//  Created by Aditya Bansal on 12/12/25.
//

import SwiftUI


struct BorderedContent: ViewModifier {
    var boarderColor: Color
    var borderThickness: CGFloat
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(boarderColor, lineWidth: borderThickness))

    }
}

extension View {
    func bordered(color: Color = .gray, width: CGFloat = 2, cornerRadius: CGFloat = 8) -> some View {
        modifier(BorderedContent(boarderColor: color, borderThickness: width, cornerRadius: cornerRadius))
    }
}

struct TextboarderView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Default Border").bordered()
            
            Text("Again Border").bordered(color:.red,width:5)
            
            Text("Yet Another Border").bordered(color:.brown,width:2,cornerRadius:20)
        }
    }
    
}

#Preview {
    TextboarderView()
}
