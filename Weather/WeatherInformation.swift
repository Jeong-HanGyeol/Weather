//
//  WeatherInformation.swift
//  Weather
//
//  Created by 정한결 on 2023/05/08.
//

import Foundation

struct WeatherInformation: Codable { // 변화해주는 타입 <- json변환
    let weather: [Weather], temp: Temp, name: String
    
    enum CodingKeys: String, CodingKey {
        case weather
        case temp = "main"
        case name
    }
}

struct Weather: Codable {
    let id: Int, main: String, description: String, icon: String
}

struct Temp: Codable {
    let temp: Double, feelsLike:Double, minTemp: Double, maxTemp: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
    }
}
