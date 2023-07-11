//
//  ResetView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 6/2/23.
//

import SwiftUI


struct ResetView: View {
    @State private var email = "" 
    @State private var showAlert = false
    @State private var errString: String?
    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationStack {
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
                    
                    InputView(text: $email,
                              title: "Enter email address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal)
                    .frame(height: 80)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.top, 50)
                    
                    //  .padding(.top, 50)
                    
                    
                    Button(action: {
                        viewModel.forgotPassword(withEmail: email) { (result) in
                            switch result {
                            case .failure(let error):
                                self.errString = error.localizedDescription
                            case .success( _):
                                break
                            }
                            self.showAlert = true
                        }
                        
                    }) {
                        HStack{
                            Text("RESET")
                                .fontWeight(.semibold)
                            
                        }
                        .foregroundColor(.blue)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                    .background(Color(.white))
                    .cornerRadius(10)
                    .padding(.top, 10)
                    
                    
                    
                    Spacer()
                    VStack{
                        NavigationLink {
                            LoginView()
                                .navigationBarBackButtonHidden(true)
                            
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
                    .padding(.bottom, 100)
                }
                
                
                
                .padding()
                
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Password Reset"),
                          message: Text(self.errString ?? "Success. Reset email sent successfully. Check your email"),
                          dismissButton: .default(Text("OK")) {
                        self.presentationMode.wrappedValue.dismiss()
                    })
                }
                
                
                
            }
           
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}
    
struct ResetView_Previews: PreviewProvider {
    static var previews: some View {
        ResetView()
    }
}
    
