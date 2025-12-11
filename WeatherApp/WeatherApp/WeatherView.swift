//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Payal Singh on 10/12/25.
//

import SwiftUI

struct WeatherView: View {
    
    var curWeather: WeatherModel = WeatherModel();
    
    var body: some View {
        VStack {
            Text(curWeather.day)
            Image(systemName: "\(curWeather.icon)").font(.largeTitle)
            Text("\(curWeather.weather)")
            HStack {
                Text("Low")
                Text("\(curWeather.low)")
            }
            HStack {
                Text("High")
                Text("\(curWeather.high)")
            }
        }.padding()
            .border(.black, width: 1)
    }
}

#Preview {
    WeatherView()
}
