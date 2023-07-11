//
//  RoundedButton.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 5/28/23.
//

import SwiftUI

struct toolBar: View {
    var label: String
    
    var body: some View {
        NavigationStack{
            VStack{
                Text(label)
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
}

struct toolBar_Previews: PreviewProvider {
    static var previews: some View {
        toolBar(label: "Hello")
    }
}
