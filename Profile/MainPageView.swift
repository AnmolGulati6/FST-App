//
//  ProfileView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct MainPageView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            NavigationView {
                VStack(spacing: 0) {
                    HStack(){
                        Text("Fluid Sports Tech")
                            .font(.system(size: 28))
                            .fontWeight((.bold))
                            .padding()
                            .padding(.leading, 35)
                       // Spacer()
                        NavigationLink(destination: SettingsView()){
                            
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.white)
                                .padding(.leading, 5)
                        }
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 67)
                    .background(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    
                    VStack {
                        HStack(spacing: 15){
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .cornerRadius(25)
                                .foregroundColor(.white)
                                
                         
                            Text(user.fullName) //user.fullName
                                .fontWeight((.semibold))
                                .font(.system(size: 29))
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            
                            
       
                        }
                        .padding()
                        
               
                    }
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                
                        .cornerRadius(10)
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.top, 15)
                    .padding(.horizontal,7)
                    
                    VStack(alignment: .leading){
                       
                            HStack(spacing: -30) {
                                Text("Welcome!")
                                    .padding(.top, 20)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 29))
                                    .padding(.bottom, 15)
                                    .padding(.top, -20)
                                
                                Image("logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 125, height: 60)
                                    .padding(.leading, 119)
                                    .padding(.top, 10)
                            }
                        HStack(spacing: -90) {
                            
                            Text("Check out our FST Virtual Assistant! Ask us a question or seek assistance here")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                                .padding(.top, 0)
                            
                            Spacer()
                            
                                .padding(.leading, 5)
                            
                            NavigationLink(destination: ChatView()) {
                                Text("Let's Chat")
                                    .foregroundColor(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                                     
                                    )
                                
                                    .fontWeight(.semibold)
                                    .padding()
                                    .padding(.all, -7)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .padding()
                                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 2)
                            }
                        }
                    }
                    .padding()
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                
                        .cornerRadius(10)
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.horizontal, 7)
                    .padding(.top,15)
                    
                    VStack(alignment: .leading){
                        Text("Sports Performance")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                        HStack(spacing: -10) {
                            Text("Check out our sports performance resources...")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Spacer()
                            NavigationLink(destination: SportsPerformancePage()){
                                Text("Click Here")
                                    .foregroundColor(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                    )
                                    .fontWeight(.semibold)
                                    .padding()
                                    .padding(.all, -7)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 2)
                                    .padding(.trailing, 10)
                            }
                        }
                    }
                    .padding()
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                
                        .cornerRadius(10)
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.horizontal, 7)
                    .padding(.top,15)
                    
                    
                    VStack(alignment: .leading){
                        Text("Mental Health")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                        
                        HStack(spacing: 0) {
                            Text("Check out our mental health resources...")
                                .font(.system(size: 20))

                                .foregroundColor(.white)
                            Spacer()
                            NavigationLink(destination: MentalHealthPage()){
                                Text("Click Here")
                                    .foregroundColor(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                    )
                                    .fontWeight(.semibold)
                                    .padding()
                                    .padding(.all, -7)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 2)
                                    .padding(.trailing, 10)
                                
                            }
                        }
                    }
                    .padding()
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                                
                        .cornerRadius(10)
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.horizontal, 7)
                    .padding(.top,15)
                    
                    Spacer()
                    
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

                    
                    
                    // Content views below the black rectangle
                }
                
               
            }
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}



/*
 Text(user.fullName)
 .font(.title)
 .padding()
 */
