//
//  WeatherButton.swift
//  Scrumdinger
//
//  Created by Shujaat-Hussain on 12/3/24.
//

import SwiftUI

struct WeatherButton: View {

    var title: String
    var foregroundColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
