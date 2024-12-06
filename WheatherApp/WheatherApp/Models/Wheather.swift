//
//  Wheather.swift
//  Scrumdinger
//
//  Created by Shujaat-Hussain on 12/3/24.
//

import Foundation

struct Wheather: Identifiable {
    var id: UUID
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    init(id: UUID = .init(), dayOfWeek: String, imageName: String, temperature: Int) {
        self.id = id
        self.dayOfWeek = dayOfWeek
        self.imageName = imageName
        self.temperature = temperature
    }
}

extension Wheather {
    static let sampleData: [Wheather] = [
        Wheather(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76),
        Wheather(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88),
        Wheather(dayOfWeek: "THU", imageName: "wind.snow", temperature: 50),
        Wheather(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60),
        Wheather(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
    ]
}
