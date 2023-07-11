//
//  SettingsView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 6/13/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var termsOfService: Bool = false
    @State var privayPol: Bool = false
    @State var aboutFST: Bool = false
    @State var contactUs: Bool = false
    
    var body: some View {
        NavigationView {
            
            Form {
                
                Section(header: Text("More Information")) {
                    
                    Button(action: {
                        aboutFST.toggle()
                    }) {
                        Text("About FST")
                            .foregroundColor(.black) // Change font color to blue
                    }
                    .sheet(isPresented: $aboutFST) {
                        aboutUsView()
                    }
                    
                    Button(action: {
                        contactUs.toggle()
                    }) {
                        Text("Contact Us")
                            .foregroundColor(.black) // Change font color to red
                    }
                    .sheet(isPresented: $contactUs) {
                        ContactForm()
                    }
                    
                    Button(action: {
                        privayPol.toggle()
                    }) {
                        Text("Privacy Policy")
                            .foregroundColor(.black) // Change font color to green
                    }
                    .sheet(isPresented: $privayPol) {
                        privacyPolicyView()
                    }
                    
                    Button(action: {
                        termsOfService.toggle()
                    }) {
                        Text("Terms of Service")
                            .foregroundColor(.black) // Change font color to orange
                    }
                    .sheet(isPresented: $termsOfService) {
                        termsOfServiceView()
                    }
                }
                
                Section(header: Text("Social")) {
                    Button(action: {
                        viewModel.signOut()
                    }) {
                        Text("Log Out")
                            .foregroundColor(.red)
                    }
                }
                
            }
        
            .navigationTitle("Settings")
            
            
            
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: MainPageView().navigationBarHidden(true)) {
                        VStack {
                            Image(systemName: "house")
                                .font(.system(size: 30)) // Enlarge the house icon
                        }
                        .padding(.leading, 20)
                    }
                    NavigationLink(destination: CalendarPage().navigationBarHidden(true)) {
                        VStack {
                            Image(systemName: "calendar")
                                .font(.system(size: 30)) // Enlarge the calendar icon
                        }
                        .padding(.trailing, 20)
                    }
                    
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)


        
    }
}

            
        
        /*
            VStack{
                Button {
                    viewModel.signOut()
                } label : {
                    HStack(spacing: 4) {
                        Text("Sign Out")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(width: 200, height: 45)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
         
            
            
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: MainPageView().navigationBarHidden(true)) {
                        VStack {
                            Image(systemName: "house")
                                .font(.system(size: 30)) // Enlarge the house icon
                        }
                        .padding(.leading, 20)
                    }
                    NavigationLink(destination: CalendarPage().navigationBarHidden(true)) {
                        VStack {
                            Image(systemName: "calendar")
                                .font(.system(size: 30)) // Enlarge the calendar icon
                        }
                        .padding(.trailing, 20)
                    }

                    }
                }
            
        }
        .navigationBarBackButtonHidden(true)
         */



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


