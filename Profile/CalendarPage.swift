//
//  CalendarPage.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct CalendarPage: View {
    var body: some View {
        NavigationView {

                VStack {
                    NavigationLink(destination: SettingsView()){
                        Spacer()
                        Image(systemName: "gear.circle")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                        
                    Text("Calendar")
                        .fontWeight(.bold)
                        .font(.system(size: 35))
                    ScrollView {
                        CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture))

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
            }
            .navigationBarBackButtonHidden(true)
    }
}

struct CalendarPage_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPage()
    }
}
