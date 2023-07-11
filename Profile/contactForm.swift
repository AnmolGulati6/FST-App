import SwiftUI

struct ContactForm: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var message: String = ""
    
    var body: some View {
        VStack {
            Text("Contact Form")
                .fontWeight(.semibold)
                .font(.system(size: 35))
                .padding(.top, 20)

            Text("For any feedback or questions, email us at fluidsportstech@gmail.com or fill out the contact form below, and we'll get back to you!")
                .padding()
                .accentColor(.white)
                .padding(.top, -5)
                .font(.system(size: 22))        
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.black)
                .padding()
                .autocorrectionDisabled()
                .autocapitalization(.none)
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.black)
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .padding()
                .padding(.top, -20)
            
                TextEditor(text: $message)
                    .frame(height: 200)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .padding()
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .padding(.top, -20)
            
            
            
            Button(action: submitForm) {
                Text("Submit")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255))
                    .padding(.all, 12)
                    .background(Color.white) // Change the background color to white
                    .cornerRadius(24)
            }
            VStack{
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")
                Text("")

                
            }
        }
      //  .padding()
        .background(
            Color(red: 0 / 255, green: 74 / 255, blue: 174 / 255)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 10)
        )
        .padding([.horizontal, .top], 7)
        .foregroundColor(.white)
        .navigationBarTitle("Contact Us")
        .padding(.top, -3)
    }
    
    func submitForm() {
        // Perform submission logic here
        print("Name: \(name)")
        print("Email: \(email)")
        print("Message: \(message)")
        
        // Reset the form after submission if needed
        name = ""
        email = ""
        message = ""
    }
}


struct ContactForm_Previews: PreviewProvider {
    static var previews: some View {
        ContactForm()
    }
}
