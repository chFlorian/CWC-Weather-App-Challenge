//
//  DailyForecastView.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 01.04.21.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DailyForecastView: View {
    @State var date: String
    @State var icon: String
    @State var high: String
    @State var low: String
    
    var body: some View {
        HStack {
            Text(date)
                .font(.title3)
                .fontWeight(.semibold)
            
            Spacer()
            
            WebImage(url: URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png"))
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .trailing) {
                Text(high)
                    .fontWeight(.semibold)
                
                Text(low)
            }
            .frame(width: 75)
        }
    }
}
