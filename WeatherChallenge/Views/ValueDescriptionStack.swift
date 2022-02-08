//
//  ValueDescriptionStack.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 30.03.21.
//

import SwiftUI

struct ValueDescriptionStack: View {
    @State var icon: String
    @Binding var boldText: String
    @State var description: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
            
            Text(boldText)
                .fontWeight(.bold)
            
            Text(description)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}
