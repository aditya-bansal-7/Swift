//
//  Memories.swift
//  LayoutFundamentals
//
//  Created by Aditya Bansal on 12/12/25.
//


import SwiftUI
struct Memories:View{
    
    var body: some View {
        
        VStack{
            
            ZStack(alignment:.topTrailing){
                Image("photo")
                    .resizable()
                    .scaledToFill()
                    .frame(height:100)
                    .shadow(radius: 20)
                Image(systemName:"heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(Color.red)
                    .padding(20)
                    .background(.yellow)
                    .clipShape(.circle)
                    .offset(x:-10,y:30)
            }
            VStack(alignment:.leading,spacing:10){
                HStack{
                    Text("Aditya Bansal")
                        .font(.headline)
                        .bold()
                    Label("10 may",systemImage:"calendar")
                        .font(.footnote)
                        .foregroundStyle(Color.secondary)
                }
                Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, doloremque.")
            }.padding()
            .background(.yellow)
        }
        .padding()
    }
}


#Preview {
    Memories()
}
