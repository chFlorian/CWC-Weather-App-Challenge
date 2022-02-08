//
//  WeatherData.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 01.04.21.
//

import Foundation

struct WeatherData: Codable {
    struct Current: Codable {
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        let dt: Date
        let sunrise: Date
        let sunset: Date
        let temp: Double
        let feelsLike: Double
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let windSpeed: Double
        let windDeg: Int
        let windGust: Double?
        let weather: [Weather]
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case sunrise
            case sunset
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case uvi
            case clouds
            case visibility
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case windGust = "wind_gust"
            case weather
        }
    }
    
    struct Minutely: Codable {
        let dt: Date
        let precipitation: Int
    }
    
    struct Hourly: Codable {
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        let dt: Date
        let temp: Double
        let feelsLike: Double
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let uvi: Double
        let clouds: Int
        let visibility: Int
        let windSpeed: Double
        let windDeg: Int
        let windGust: Double
        let weather: [Weather]
        let pop: Double
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case uvi
            case clouds
            case visibility
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case windGust = "wind_gust"
            case weather
            case pop
        }
    }
    
    struct Daily: Codable {
        struct Temp: Codable {
            let day: Double
            let min: Double
            let max: Double
            let night: Double
            let eve: Double
            let morn: Double
        }
        
        struct FeelsLike: Codable {
            let day: Double
            let night: Double
            let eve: Double
            let morn: Double
        }
        
        struct Weather: Codable {
            let id: Int
            let main: String
            let description: String
            let icon: String
        }
        
        let dt: Date
        let sunrise: Date
        let sunset: Date
        let temp: Temp
        let feelsLike: FeelsLike
        let pressure: Int
        let humidity: Int
        let dewPoint: Double
        let windSpeed: Double
        let windDeg: Int
        let weather: [Weather]
        let clouds: Int
        let pop: Double
        let uvi: Double
        let rain: Double?
        
        private enum CodingKeys: String, CodingKey {
            case dt
            case sunrise
            case sunset
            case temp
            case feelsLike = "feels_like"
            case pressure
            case humidity
            case dewPoint = "dew_point"
            case windSpeed = "wind_speed"
            case windDeg = "wind_deg"
            case weather
            case clouds
            case pop
            case uvi
            case rain
        }
    }
    
    let lat: Double
    let lon: Double
    let timezone: String
    let timezoneOffset: Int
    let current: Current
    let minutely: [Minutely]
    let hourly: [Hourly]
    let daily: [Daily]
    
    private enum CodingKeys: String, CodingKey {
        case lat
        case lon
        case timezone
        case timezoneOffset = "timezone_offset"
        case current
        case minutely
        case hourly
        case daily
    }
}
