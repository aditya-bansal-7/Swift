//
//  ContentView.swift
//  ClockApp
//
//  Created by Vansh     on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    enum ClockTab{
        case worldClock
        case alarm
        case stopWatch
    }
    @State private var selectedTab: ClockTab = .alarm
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                Tab("World Clock",systemImage: "globe.fill",value: .worldClock){
                    WorldClock()
                }
                Tab("Alarm", systemImage: "alarm.fill", value: .alarm){
                    Alarm()
                    
                }
                Tab("StopWatch" , systemImage: "stopwatch.fill",value: .stopWatch){
                    StopWatch()
                    
                }
                    
                }
            }
        }
       
    }



struct WorldClock: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("World Time"){
                    WorldClockDetail()
                }
            }
            .navigationTitle("World Clock")
        }
    }
}
struct WorldClockDetail: View {
    var body: some View {
        Text("World Time ")
            .font(.largeTitle)
            .navigationTitle("Time")
    }
}



struct Alarm: View {
    @State private var showAlarmSheet = false
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Your Alarms"){
                    AlarmDetail()
                }
            }
            .navigationTitle("Alarms")
            .toolbar{
                Button{
                    showAlarmSheet = true
                }label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showAlarmSheet){
                AlarmDetail()
            }
        }
    }
}
struct AlarmDetail: View {
    var body: some View {
        Text("Alarm")
            .font(.largeTitle)
            .navigationTitle("Alarm")
    }
}



struct StopWatch: View {
    @State private var showStopWatchSheet = false
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Your Times"){
                    StopWatchDetail()
                }
            }
            .navigationTitle("Times")
            .toolbar{
                Button{
                    showStopWatchSheet = true
                }label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showStopWatchSheet){
                StopWatchDetail()
            }
        }
    }
}
struct StopWatchDetail: View {
    var body: some View {
        Text("00:00 - 00:00")
            .font(.largeTitle)
            .navigationTitle("Times")
    }
}


#Preview {
    ContentView()
}
