//
//  ContentView.swift
//  login_registration
//
//  Created by Shaan on 13/05/25.
//
import SwiftUI


struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""
    @State private var number = ""
    @State private var isClicked = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Gradient
                RoundedRectangle(cornerRadius: 50, style: .continuous)
                    .foregroundStyle(
                        .linearGradient(colors: [.indigo, .white],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)
                    )
                    .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    Text("BLUEBEX")
                        .foregroundColor(.black)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .padding(.top, -30)
                    
                    // Name
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Name")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        TextField("Enter your Name", text: $name)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }.frame(width: 300)
                    
                    // Email
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        TextField("Enter your Email", text: $email)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                    .frame(width: 300)
                    
                    // Mobile No
                    VStack(alignment: .leading, spacing: 8) {
                        Text("PhoneNo")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        TextField("Enter your mobile number", text: $number)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                    .frame(width: 300)
                    
                    // Password
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Password")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Enter your Password", text: $password)
                            .padding()
                            .background(Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
                    .frame(width: 300)
                    
                    Button(action: {
                        
                    }) {
                        Text("Register")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                            .shadow(color: isClicked ? .gray : .clear, radius: 5, x: 0, y: 5)
                    }
                    .frame(width: 300)
                    
                    // Already Registered + Login Link
                    HStack {
                        Text("Already registered?")
                            .font(.subheadline)
                            .foregroundColor(.black)
                        NavigationLink(destination: SecondPageView()) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.black)
                                .cornerRadius(5)
                                .shadow(color: isClicked ? .gray : .clear, radius: 5, x: 0, y: 5)
                        }
                    }
                    .padding(.top, 60)
                }
                .padding(.top, 40)
            }
        }
    }
    
  
}

struct SecondPageView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isClicked = false
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack {
            // Background Gradient
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .foregroundStyle(
                    .linearGradient(colors: [.indigo, .white],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)
                )
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Text("WELCOME")
                    .foregroundColor(.black)
                    .font(.system(size: 35, weight: .bold))
                    .padding(.top, -100)
                
                // Email
                VStack(alignment: .leading, spacing: 8) {
                    Text("Email")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    TextField("Enter your Email", text: $email)
                        .padding()
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }
                .frame(width: 300)
                
                // Password
                VStack(alignment: .leading, spacing: 8) {
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    SecureField("Enter your Password", text: $password)
                        .padding()
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }
                .frame(width: 300)
                
                Button(action: {
                   
                }) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .shadow(color: isClicked ? .gray : .clear, radius: 5, x: 0, y: 5)
                }
                .frame(width: 300)
            }
        }
    }
    
  
}

#Preview {
    ContentView()
}

#Preview {
    SecondPageView()
}
