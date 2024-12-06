//
//  AFButton.swift
//  Scrumdinger
//
//  Created by Shujaat-Hussain on 12/3/24.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text("Learn More")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
