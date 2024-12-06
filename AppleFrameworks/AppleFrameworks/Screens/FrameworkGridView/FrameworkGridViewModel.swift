//
//  View Models.swift
//  Scrumdinger
//
//  Created by Shujaat-Hussain on 12/3/24.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
    {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
