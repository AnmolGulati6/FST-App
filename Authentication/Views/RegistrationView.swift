//
//  RegistrationView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct RegistrationView: View { 
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        ZStack{
            
            //background color
            Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
            VStack {
                // image
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 210)
                    .padding(.top, 40)
                
                //form fields
                VStack(spacing: 24) {
                    InputView(text: $fullName,
                        title: "Full Name",
                        placeholder: "Enter your name")
                    .disableAutocorrection(true)
                    
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
                    
                    ZStack(alignment: .trailing){
                        InputView(text: $confirmPassword,
                                  title: "Confirm Password",
                                  placeholder: "Confirm your password",
                                  isSecureField: true)
                        .disableAutocorrection(true)
                        
                        if !password.isEmpty && !confirmPassword.isEmpty {
                            if password == confirmPassword {
                                Image(systemName: "checkmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemGreen))
                            } else {
                                Image(systemName: "xmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemRed))
                            }
                        }
                    }

                    
                    }
                    
                    .padding(.horizontal)
                    .frame(height: 330)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top, 25)
                    Button {
                        Task {
                            try await viewModel.createUser(withEmail: email,
                                                           password: password, fullname: fullName)
                        }
                    } label: {
                        HStack{
                            Text("SIGN UP")
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
                
                
                
                    .padding(.top, 40)
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
                
                Button {
                    dismiss()
                } label : {
                    HStack(spacing: 4) {
                        Text("Already have an account?")
                            .foregroundColor(.white)
                        Text("Sign in")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 17))
                    .padding(.bottom, 15)
                }
            }
            
            .padding()
            .padding(.top, 10)
            
        }
        .edgesIgnoringSafeArea(.all) // Ignore safe area to extend the background color

    }
}

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullName.isEmpty
        
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
