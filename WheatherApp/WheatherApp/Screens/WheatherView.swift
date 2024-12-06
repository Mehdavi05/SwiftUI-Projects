//
//  ContentView.swift
//  WheatherApp
//
//  Created by Shujaat-Hussain on 12/6/24.
//

import SwiftUI

struct WeatherView: View {
    @State var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
               
                WeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 28) {
                    ForEach(Wheather.sampleData)
                    { wheather in
                        WeatherDayView(dayOfWeek: wheather.dayOfWeek, imageName: wheather.imageName, temperature: wheather.temperature)
                    }
                }
                
                Spacer()
                
                Button{
                    isNight  = isNight == true ? false : true
                } label: {
                    WeatherButton(title: "Change Day Time", foregroundColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    WeatherView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    //var topColor: Color
    //var bottomColor: Color
    
    var body: some View {
        /*LinearGradient(colors: [topColor, bottomColor], startPoint: .leading, endPoint: .trailing)
            .ignoresSafeArea()*/
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
    }
}

struct WeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom, 40)
        }
    }
}


