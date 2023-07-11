//
//  ContentView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isRegistrationViewActive = false
    @EnvironmentObject var viewModel: AuthViewModel

    
    var body: some View {
        
        NavigationView {
            ZStack{
                //background color
                Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                VStack {
                    // image
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 210)
                        .padding(.top, 50)
                    
                    
                    // form fields
                    VStack(spacing: 24) {
                        InputView(text: $email,
                                  title: "Email Address",
                                  placeholder: "name@example.com")
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Enter your password",
                                  isSecureField: true)
                        .disableAutocorrection(true)
                        
                    }
                    
                    
                    .padding(.horizontal)
                    .frame(height: 170)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top, 50)
                    
                   
                        
                    
                        
                    
                    // sign in button
                    Button {
                        Task {
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                    } label: {
                        HStack{
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.blue)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                    .background(Color(.white))
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.7)
                    .cornerRadius(10)
                    .padding(.top, 10)
                    
                    Spacer()
                    
                    // forgot password button
                    NavigationLink {
                        ResetView()
                            .navigationBarBackButtonHidden(true)
                        
                    } label: {
                        HStack(spacing: 4) {
                            Text("Forgot Password?")
                                .foregroundColor(.white)
                            Text("Click Here")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 17))
                        .padding(.bottom, 15)
                    }
                    
                    // sign up button
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                        
                    } label: {
                        HStack(spacing: 4) {
                            Text("Don't have an account?")
                                .foregroundColor(.white)
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 17))
                        .padding(.bottom, 15)
                    }
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all) // Ignore safe area to extend the background color
        }
    }
}

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        
    }
}
                        
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
