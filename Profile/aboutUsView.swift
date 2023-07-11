//
//  aboutUsView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 6/28/23.
//

import SwiftUI

struct aboutUsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                VStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 180)
                    
                    Text("About Us")
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .padding(.bottom, 5)
                    
                    
                    Text("Fluid Sports Tech was established with a clear focus on the student-athlete, aiming to empower them for optimal performance and mental wellbeing. Our team comprises passionate individuals driven by the desire to make a positive impact in the lives of student-athletes. We are dedicated to providing valuable resources and comprehensive support in a private setting, while also actively working towards eradicating the stigma surrounding student-athletes and mental health. At Fluid Sports Tech, we firmly believe that sports minds matter, and we are committed to fostering an environment where athletes can thrive both on and off the field.")
                        .font(.system(size: 20))
                        .padding(.top, 10)
                   
                }
            }
        }

        .padding()
        .background(
            Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 10)
        )
        .padding([.horizontal, .top], 7)
        .foregroundColor(.white)
    }
}

struct aboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        aboutUsView()
    }
}
