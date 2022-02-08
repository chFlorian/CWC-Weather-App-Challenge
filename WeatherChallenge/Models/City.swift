//
//  City.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 01.04.21.
//

import Foundation

struct City: Codable, Identifiable {
    let id = UUID()
    
    let name: String
    let lat: Double
    let lon: Double
    
    static var placeholder: [City] {
        [
            City(name: "New York", lat: 0.0, lon: 0.0),
            City(name: "Washington DC", lat: 0.0, lon: 0.0),
            City(name: "San Francisco", lat: 0.0, lon: 0.0),
        ]
    }
}
