//
//  tarfficLight.swift
//  TabView
//
//  Created by Aditya Bansal on 02/02/26.
//

import SwiftUI

struct TrafficLightView: View {
    var body: some View {
        TabView {
            
            
            Color.white
                .ignoresSafeArea()
                .tabItem {
                    Label("Red", systemImage: "circle.fill").foregroundStyle(.red)
                }
                .tag(0)
                .badge(10)
            Color.red
                .ignoresSafeArea()
                .tabItem {
                    Label("Red", systemImage: "circle.fill").foregroundStyle(.red)
                }
                .tag(0)
                .badge("New")

            Color.yellow
                .ignoresSafeArea()
                .tabItem {
                    Label("Yellow", systemImage: "circle.fill").foregroundStyle(.yellow)
                }
                .tag(1)
            Color.green
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.blue
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.pink
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.black
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.purple
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.orange
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.gray
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
            Color.brown
                .ignoresSafeArea()
                .tabItem {
                    Label("Green", systemImage: "circle.fill").foregroundStyle(.green)
                }
                .tag(2)
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    TrafficLightView()
}

