//
//  privacyPolicy.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 6/28/23.
//

import SwiftUI

struct privacyPolicyView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                VStack{
                    Text("Privacy Policy")
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .padding(.bottom, 5)
                    Text("At Fluid Sports Tech, we are committed to protecting the privacy and confidentiality of our users. This Privacy Policy explains how we collect, use, and safeguard your personal information when you use the Fluid Sports Tech app ('the App'). By using the App, you consent to the terms of this Privacy Policy.")
                        .font(.system(size: 15))
                    
                    Text("Information We Collect")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("We may collect personal information, such as your name, email address, and demographic information, when you voluntarily provide it to us. Additionally, we may collect non-personal information, such as device information and usage data, through the use of cookies and similar technologies.")
                        .font(.system(size: 15))
                    
                    Text("Use of Information")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("We use the collected information to provide and improve the App's features and functionality, deliver personalized content, communicate with you, and analyze usage patterns. We may also use your information for marketing and promotional purposes, but only with your explicit consent.")
                        .font(.system(size: 15))
                    
                    Text("Data Security")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("We take appropriate measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. However, please note that no method of transmission or storage is completely secure, and we cannot guarantee the absolute security of your data.")
                        .font(.system(size: 15))
                    
                    Text("Data Sharing")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("We do not sell, trade, or rent your personal information to third parties. We may share your information with trusted third-party service providers who assist us in operating the App, as well as with our business partners and affiliates, but only to the extent necessary for the provision of services and as permitted by applicable laws.")
                        .font(.system(size: 15))
                }
                VStack{
                    Text("Third-Party Links")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("The App may contain links to third-party websites or resources. We are not responsible for the privacy practices or content of these third parties. We encourage you to review the privacy policies of those third parties when accessing their websites or resources.")
                    
                    Text("Children's Privacy")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("The App is not intended for use by individuals under the age of 13. We do not knowingly collect personal information from children. If we become aware that we have collected personal information from a child without appropriate parental consent, we will take steps to delete that information.")
                    
                    Text("Limitation of Liability")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("To the maximum extent permitted by law, Fluid Sports Tech and its affiliates shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from your use or inability to use the App. This includes damages for loss of profits, data, or other intangible losses, even if advised of the possibility of such damages.")
                    
                    Text("Changes to the Privacy Policy")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("We reserve the right to update or modify this Privacy Policy at any time. Any changes will be effective immediately upon posting the updated Privacy Policy on the App. We encourage you to review this Privacy Policy periodically for any updates or changes.")
                    
                    Text("Contact Us")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("If you have any questions, concerns, or requests regarding this Privacy Policy or the handling of your personal information, please contact us at fluidsportstech@gmail.com.")
                }
                VStack{
                    Text("This Privacy Policy is governed by and construed in accordance with the laws of [Jurisdiction]")
                        .fontWeight(.semibold)
                        .padding(.all, 5)

                }
                }
            }
            
            .frame(maxHeight: .infinity)
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

struct privacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        privacyPolicyView()
    }
}
