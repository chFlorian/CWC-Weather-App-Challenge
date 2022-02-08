//
//  HourlyBox.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 30.03.21.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct HourlyBox: View {
    @State var time: String
    @State var icon: URL
    @State var temp: String
    
    var body: some View {
        VStack {
            Text(time)
            
            WebImage(url: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(temp)
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
        .padding(24)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.purple)
        )
    }
}
