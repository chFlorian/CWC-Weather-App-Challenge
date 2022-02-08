//
//  WeatherService.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 01.04.21.
//

import Combine
import SwiftUI

struct WeatherService {
    @AppStorage(Statics.UserDefaultKeys.useMetric) static var useMetric = true
    
    static func getWeatherData(lat: Double, long: Double) -> AnyPublisher<WeatherData, Error> {
        let units = useMetric ? "metric" : "imperial"
        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat)&lon=\(long)&units=\(units)&appid=\(Statics.apiKey)")!
        
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                    httpResponse.statusCode == 200 else {
                        throw URLError(.badServerResponse)
                    }
                
                return element.data
            }
            .decode(type: WeatherData.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    static func getCity(for name: String) -> AnyPublisher<[City], Error> {
        let url = URL(string: "https://api.openweathermap.org/geo/1.0/direct?q=\(name)&limit=1&appid=\(Statics.apiKey)")!
        
        return URLSession.shared
            .dataTaskPublisher(for: url)
            .tryMap { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                    httpResponse.statusCode == 200 else {
                        throw URLError(.badServerResponse)
                    }
                
                return element.data
            }
            .decode(type: [City].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
