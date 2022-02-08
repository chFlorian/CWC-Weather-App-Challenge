//
//  AddCityView.swift
//  WeatherChallenge
//
//  Created by florian schweizer on 02.04.21.
//

import SwiftUI

struct AddCityView: View {
    @ObservedObject var model: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Manage")
                .font(.title)
                .fontWeight(.semibold)
            
            Toggle("Use metric Units", isOn: $model.useMetric)
            
            TextField("New City", text: $model.newCityName)
            
            Button("Add City", action: model.addCity)
        }
        .padding()
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 40)
                .fill(Color.white)
        )
        .padding(.horizontal, 25)
    }
}
