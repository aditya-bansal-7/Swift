//
//  TabWithNavStack.swift
//  TabView
//
//  Created by Aditya Bansal on 02/02/26.
//

import SwiftUI

struct TabWithNavStack: View {
    var body: some View {
        NavigationStack {
            TabView {
                Tab("Today", systemImage: "doc.richtext.he"){
                    Today()
                }
                Tab("Games", systemImage: "gamecontroller"){
                    Text("Alarm Here")
                }
                Tab("Apps", systemImage: "square.stack.3d.up"){
                    Text("Stop Watch Here")
                }
                Tab("Search", systemImage: "magnifyingglass"){
                    Text("Stop Watch Here")
                }
            }.navigationTitle("Games")
        }
    }
}


struct Today:View {
    var body: some View {
        List{
            NavigationLink("Top Games"){
                Text("Top Free Games")
            }
        }
    }
}

#Preview {
    TabWithNavStack()
}
