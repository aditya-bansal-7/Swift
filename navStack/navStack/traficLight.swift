//
//  traficLight.swift
//  navStack
//
//  Created by Aditya Bansal on 19/01/26.
//

import SwiftUI


struct trafiLight:View {
    var body:some View {
        NavigationStack(){
            
            HStack(spacing: 10) {
                NavigationLink(destination: redLightView()){
                    Circle().frame(width: 50,height: 50).foregroundStyle(.red)
                }
                NavigationLink(destination: yellowLightView()){
                    Circle().frame(width: 50,height: 50).foregroundStyle(.yellow)
                }
                NavigationLink(destination: greenLightView()){
                    Circle().frame(width: 50,height: 50).foregroundStyle(.green)
                }
            }
        }
    }
}

struct redLightView:View{
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
        }
    }
}

struct yellowLightView:View{
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
        }
    }
}

struct greenLightView:View{
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
        }
    }
}


#Preview {
    NavigationStack {
        trafiLight()
    }
}
