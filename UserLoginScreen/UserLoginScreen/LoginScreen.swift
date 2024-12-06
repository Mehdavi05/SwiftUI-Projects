//
//  ContentView.swift
//  UserLoginScreen
//
//  Created by Shujaat-Hussain on 12/6/24.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var isPasswordFieldFocused: Bool // Track focus state
    
    var body: some View {
        VStack(spacing: 30) {
            // Animated Image
            ZStack {
                Image(systemName: isPasswordFieldFocused ? "eye.slash.fill" : "eye.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .animation(.easeInOut(duration: 0.5), value: isPasswordFieldFocused)
                    .foregroundColor(.white)
            }
            
            // Username TextField
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 20)
            
            // Password SecureField
            SecureField("Password", text: $password)
                .focused($isPasswordFieldFocused)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 20)
            
            // Login Button
            Button(action: {
                // Login Action
                print("Logging in...")
            }) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
        }
        .frame(width: 350, height: 400)
        .background(Color.black.opacity(0.9))
        .cornerRadius(20)
        .padding()
        .onTapGesture {
            // Dismiss keyboard when tapping outside
            isPasswordFieldFocused = false
        }
    }
}


#Preview {
    LoginScreen()
}
