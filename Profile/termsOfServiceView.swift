import SwiftUI

struct termsOfServiceView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                VStack{
                    Text("Terms of Service")
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .padding(.bottom, 5)
                    Text("Welcome to the Fluid Sports Tech app. By accessing or using the App, you agree to comply with and be bound by the following Terms of Service. Please read them carefully.")
                        .font(.system(size: 15))
                    
                    Text("Acceptance of Terms")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("By using the App, you acknowledge that you have read, understood, and agreed to these Terms of Service. If you do not agree with any part of these terms, please refrain from using the App.")
                        .font(.system(size: 15))
                    
                    Text("Use of the App")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("The Fluid Sports Tech App provides services related to mental health resources and sports performance. You may use the App for personal, non-commercial purposes and in compliance with applicable laws and regulations. You must be at least 13 years old to use the App.")
                        .font(.system(size: 15))
                    
                    Text("User Accounts")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("To access certain features of the App, you may be required to create a user account. You are responsible for maintaining the confidentiality of your account credentials and are liable for all activities that occur under your account. You agree to provide accurate and complete information when creating your account and to promptly update any changes.")
                        .font(.system(size: 15))
                    
                    Text("User Responsibilities")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("When using the App, you agree to:\n- Abide by all applicable laws and regulations.\n- Respect the intellectual property rights of Fluid Sports Tech and other third parties.\n- Use the App for lawful and legitimate purposes only.\n- Refrain from engaging in any harmful, disruptive, or illegal activities.\n- Ensure that any content you upload or share does not infringe upon the rights of others.")
                        .font(.system(size: 15))
                }
                VStack{
                    Text("Intellectual Property Rights")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("The App and its contents, including but not limited to text, graphics, logos, images, and software, are the property of Fluid Sports Tech and protected by intellectual property laws. You may not copy, modify, distribute, or reproduce any part of the App without our prior written consent.")
                    
                    Text("Disclaimer of Warranties")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("The App is provided on an 'as is' and 'as available' basis, without warranties of any kind, whether express or implied. Fluid Sports Tech does not guarantee the accuracy, completeness, or reliability of the App or its content. Your use of the App is at your own risk.")
                    
                    Text("Limitation of Liability")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("To the maximum extent permitted by law, Fluid Sports Tech and its affiliates shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from your use or inability to use the App. This includes damages for loss of profits, data, or other intangible losses, even if advised of the possibility of such damages.")
                    
                    Text("Governing Law and Dispute Resolution")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("These Terms of Service are governed by the laws of [Jurisdiction]. Any disputes arising from or related to these terms shall be resolved through binding arbitration in accordance with the rules of [Arbitration Institution]. The prevailing party shall be entitled to recover its reasonable attorney's fees and costs.")
                    
                    Text("Modifications to the Terms")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("Fluid Sports Tech reserves the right to modify, update, or discontinue these Terms of Service at any time without prior notice. Your continued use of the App after any modifications constitutes your acceptance of the revised terms.")
                }
                VStack{
                    Text("Severability")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("If any provision of these Terms of Service is deemed invalid or unenforceable, the remaining provisions shall remain in full force and effect.")
                    
                    Text("Contact Us")
                        .fontWeight(.semibold)
                        .padding(.all, 5)
                        .font(.system(size: 19))
                    Text("If you have any questions or concerns regarding these Terms of Service or the use of the App, please contact us at fluidsportstech@gmail.com.")
                        .foregroundColor(.white)
                    
                    Text("By using the Fluid Sports Tech App, you agree to abide by these Terms of Service.")
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


struct termsOfServiceView_Previews: PreviewProvider {
    static var previews: some View {
        termsOfServiceView()
    }
}
