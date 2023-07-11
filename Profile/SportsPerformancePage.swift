//
//  SportsPerformancePage.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct SportsPerformancePage: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack(){
                    Text("Sports Performance")
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
                
                
                ScrollView{
                    VStack(alignment: .leading){
                        Text("Enhancing Physical Conditioning")
                            .fontWeight((.semibold))
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false,
                                   content:{
                            HStack{
                                ForEach(0..<4) { index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width:150, height: 175)
                                        .shadow(radius:10)
                                        .padding()
                                        .padding(.top, -30)
                                        .padding(.leading, -20)
                                }
                                .padding()
                            }
                            
                        })
                        
                    }
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)

                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.top, 15)
                    
                    VStack(alignment: .center){
                        Text("Topic #2")
                            .fontWeight((.semibold))
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false,
                                   content:{
                            HStack{
                                ForEach(0..<4) { index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width:150, height: 175)
                                        .shadow(radius:10)
                                        .padding()
                                        .padding(.top, -30)
                                        .padding(.leading, -20)
                                }
                                .padding()
                            }
                            
                        })
                        
                    }
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)

                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.top, 15)
                  //  .padding(.horizontal,7)
                    
                    VStack(alignment: .center){
                        Text("Topic #3")
                            .fontWeight((.semibold))
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false,
                                   content:{
                            HStack{
                                ForEach(0..<4) { index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width:150, height: 175)
                                        .shadow(radius:10)
                                        .padding()
                                        .padding(.top, -30)
                                        .padding(.leading, -20)
                                }
                                .padding()
                            }
                            
                        })
                        
                    }
                    .background(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)

                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.top, 15)
                    
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

                }
                
                
                
            }
            
        }
        .navigationBarBackButtonHidden(true)

        
    }
}

struct SportsPerformancePage_Previews: PreviewProvider {
    static var previews: some View {
        SportsPerformancePage()
    }
}
