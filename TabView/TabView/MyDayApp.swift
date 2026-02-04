//
//  Activity.swift
//  ClockApp
//
//  Created by Aditya Bansal on 02/02/26.
//

import SwiftUI

struct MyDayApp: View {
    @State private var unRead = 3

    var body: some View {
        VStack {
            TabView {
                
                Tab("Today", systemImage: "calendar") {
                    Text("Today's Overview")
                        .font(.largeTitle)
                }
                
                Tab("Tasks", systemImage: "list.bullet") {
                    Tasks(unRead: $unRead)
                }
                .badge(unRead)
                Tab("Messages", systemImage: "message") {
                    Text("No new messages")
                        .font(.largeTitle)
                }
                .badge("New")

                Tab("Profile", systemImage: "person.circle.fill") {
                    Text("Profile")
                }
            }
        }
    }
}

struct Tasks: View {
    @Binding var unRead:Int
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Task 1") {
                    TasksDetail(unRead: $unRead)
                }
                NavigationLink("Task 2") {
                    TasksDetail(unRead: $unRead)
                }
                NavigationLink("Task 3") {
                    TasksDetail(unRead: $unRead)
                }
            }
            .navigationTitle(Text("Tasks"))
            
        }
    }
}

struct TasksDetail: View {
    @Binding var unRead:Int
    var body: some View {
        Text("This is Your Task")
            .font(.largeTitle)
            .navigationTitle("Task")
            .onAppear {
                if(unRead > 0) {
                    unRead -= 1
                }
            }
    }
}

#Preview {
    MyDayApp()
}
