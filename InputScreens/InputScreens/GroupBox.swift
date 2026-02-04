//
//  GroupBox.swift
//  InputScreens
//
//  Created by Aditya Bansal on 03/02/26.
//

import SwiftUI

struct GroupBoxExample: View {
    
    @State var username = ""
    @State var password = ""
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Sign In").font(.largeTitle).bold()
            
            Spacer()
            
            GroupBox{
                VStack(alignment: .leading){
                    Text("Username")
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                    Text("Password")
                    TextField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
            }.padding()
            
            Spacer()
            Spacer()
        }
    }
}


#Preview {
    GroupBoxExample()
}
