//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Payal Singh on 10/12/25.
//

enum weatherEnums {
    case sunny
    case rainy
    case cloudy
    case windy
}

struct WeatherModel {
    var day: String = "Mon"
    var weather: weatherEnums = .rainy
    
    var icon: String {
        if weather == .rainy {
            "cloud.rain.fill"
        } else if weather == .cloudy {
            "cloud.fill"
        } else if weather == .sunny {
            "sun.max.fill"
        } else {
            "wind"
        }
    }
    var low: Int = 25
    var high: Int = 30
}
