//
//  FrameworkDetailView.swift
//  Scrumdinger
//
//  Created by Shujaat-Hussain on 12/3/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var frameWork: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
           XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: frameWork)
            
            Text(frameWork.description)
                .font(.body)
                .padding()
           
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
