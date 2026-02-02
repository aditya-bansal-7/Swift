//
//  ToolBarItemGroupView.swift
//  NavBarCustomisationApp
//
//  Created by Aditya Bansal on 29/01/26.
//

import SwiftUI

struct ToolBarItemGroupView: View {
    @State private var text = ""
    @State private var fontSize = 12.0
    @State private var bold = false
    @State private var italic = false
    
    private var fontWeight: Font.Weight { bold ? .bold : .regular }
    
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $text)
                    .font(.system(size: CGFloat(fontSize), weight: fontWeight, design: .default))
                    .italic(italic)
                
            }
            .navigationTitle("Note")
            .toolbar{
                ToolbarItemGroup(placement : .topBarTrailing){
                    Slider(value: $fontSize, in: 10...20){
                        Text("font size")
                    }
                    .frame(width: 150)
                    Toggle(isOn: $bold){
                        Image(systemName: "bold")
                    }
                    .toggleStyle(.button)
                    Toggle(isOn: $italic){
                        Image(systemName: "italic")
                    }
                    .toggleStyle(SwitchToggleStyle())
                    
                    
                }
            }
        }
    }
}
#Preview {
    ToolBarItemGroupView()
}
