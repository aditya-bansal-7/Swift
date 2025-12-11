//
//  ContentView.swift
//  WeatherApp
//
//  Created by Payal Singh on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Weekly Weather").font(.largeTitle).padding()
            HStack {
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .rainy,low: 25,high: 30))
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .sunny,low: 25,high: 30))
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .windy,low: 25,high: 30))
            }
            HStack {
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .rainy,low: 25,high: 30))
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .rainy,low: 25,high: 30))
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .rainy,low: 25,high: 30))
            }
            HStack {
                WeatherView(curWeather: WeatherModel(day:"Mon",weather: .rainy,low: 25,high: 30))
            }
            
        }
    }
}

#Preview {
    ContentView()
}
