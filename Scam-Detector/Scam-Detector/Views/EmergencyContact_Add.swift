import SwiftUI
import Foundation
import Combine

struct EmergencyContact_Add: View {
    /// Saved emergency contact name of type string
    @Binding var name: String;
    /// Saved emergency contact number of type string
    @Binding var number: String;
    /// Navigation variable back to emergency contact page
    @Binding var isFinished: Bool;
    
    /// Input variable for contact phone number
    @State var inputNumber: String = "";
    /// Input variable for contact name
    @State var inputName: String = "";
    /// Error message to show in the alert
    @State var alertMessage: String = "";
    /// Alert variable to toggle alerts
    @State var showAlert: Bool = false;
    /// Saved variable for checking if there is an existing contact in local storage
    @AppStorage(StorageKeys.emergencyExists.rawValue) var hasContact: Bool = false;
    
    var body: some View {
            VStack{
                Text("Emergency Contact")
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: uSizes.sWidth * 0.1, weight: .bold))
                .padding(.bottom, uSizes.sHeight * 0.04)
                .padding(.top, -uSizes.sHeight * 0.16)
                .multilineTextAlignment(.center)
                
                ScrollView(.vertical){
                    VStack(spacing: 0){
                        Text("Contact Name")
                            .font(.system(size: uSizes.sWidth * 0.06, weight: .heavy))
                        TextField("\(name)", text: $inputName)
                            .padding()
                            .background(Color.white.cornerRadius(10))
                            .font(.system(size: uSizes.sWidth * 0.08))
                            .onAppear{
                                inputName = name;
                            }
                        
                        Text("Phone Number")
                            .font(.system(size: uSizes.sWidth * 0.06, weight: .heavy))
                            .padding(.top, uSizes.sHeight * 0.05)
                        TextField("\(number)", text: $inputNumber)
                            .padding()
                            .font(.system(size: uSizes.sWidth * 0.08))
                            .keyboardType(.decimalPad)
                            .background(Color.white.cornerRadius(10))
                            .onReceive(Just(inputNumber)) {
                                // Limits input to numbers only
                                newValue in let filtered = newValue.filter { "0123456789".contains($0) }
                                if filtered != newValue {
                                    inputNumber = filtered;
                                }
                                // Limits input to less than 10 characters
                                if inputNumber.count > 10 {
                                    inputNumber = String(inputNumber.prefix(10))
                                }
                            }
                            .onAppear{
                                inputNumber = number;
                            }
                        
                        Button("Submit"){
                            if inputName.isEmpty || inputNumber.isEmpty {
                                alertMessage = "Please Fill All Fields";
                                showAlert = true;
                                return;
                            }
                            if inputName.count < 2 || inputName.count > 12 {
                                alertMessage = "Name must have a minimum of 2 and maximum of 12 characters";
                                showAlert = true;
                                return;
                            }
                            if inputNumber.count < 10 {
                                alertMessage = "Please enter a 10-digit phone number";
                                showAlert = true;
                                return;
                            }
                            name = inputName;
                            number = inputNumber;
                            if(!hasContact) {
                                hasContact = true;
                            }
                            else {
                                isFinished = false;
                            }
                        }
                        .buttonStyle(CustomButton())
                        .padding(.top, uSizes.sHeight * 0.20)
                    }
                }
                .padding(.bottom, -uSizes.sWidth * 0.03 )
            }
            //.ignoresSafeArea(.keyboard, edges: .bottom)
            .padding(.horizontal, uSizes.sWidth * 0.05)
            .padding(.vertical, uSizes.sHeight * 0.1)
            .alert("Error", isPresented: $showAlert, actions: {
                Button("Try Again", role: .cancel, action: {})
            }, message: {
                Text("\(alertMessage)")
            })
            .background(GradientBackground().blueGradient)
            .onTapGesture {
                // Dismisses keyboard when clicked outside
                KeyboardDismiss()
            }
        
    }
}

// REFERENCE
// Numbers Only in TextField https://stackoverflow.com/questions/58733003/how-to-create-textfield-that-only-accepts-numbers/58736068#58736068
// Dismiss keyboard https://stackoverflow.com/questions/60013190/textfield-swiftui-dismiss-keyboard
