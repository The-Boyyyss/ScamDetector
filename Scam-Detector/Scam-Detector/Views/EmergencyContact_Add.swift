//
//  EmergencyContact_Add.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-05-23.
//

import SwiftUI
import Combine

/// Add/Update Emergency Contact Page View
struct EmergencyContact_Add: View {
    @Binding var name: String;
    @Binding var number: String;
    @Binding var isFinished: Bool;
    
    @State var inputNumber: String = "";
    @State var inputName: String = "";
    @State var showAlert: Bool = false;
    
    @AppStorage(StorageKeys.emergencyExists.rawValue) var hasContact: Bool = false;
    
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                VStack(alignment: .center){
                    Text("Emergency")
                    Text("Contact")
                }
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: UIScreen.main.bounds.width*0.1, weight: .bold))
                .padding(.bottom, UIScreen.main.bounds.height*0.04)
                .padding(.top, -UIScreen.main.bounds.height*0.05)
                Spacer().frame(height: 50)
                VStack(alignment:.leading, spacing: 0){
                Text("Contact Name")
                    .font(.system(size: UIScreen.main.bounds.width*0.06, weight: .semibold))
                TextField("\(name)", text: $inputName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 25))
                    .frame(width: UIScreen.main.bounds.width*0.75)
                    .onAppear{
                        inputName = name;
                    }
                
                Text("Phone Number")
                    .font(.system(size: UIScreen.main.bounds.width*0.06, weight: .semibold))
                    .padding(.top, UIScreen.main.bounds.height * 0.05)
                TextField("\(number)", text: $inputNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 25))
                    .frame(width: UIScreen.main.bounds.width*0.75)
                    .keyboardType(.decimalPad)
                    .onReceive(Just(inputNumber)) {
                        newValue in let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            inputNumber = filtered;
                        }
                        if inputNumber.count > 10 {
                            inputNumber = String(inputNumber.prefix(10))
                        }
                    }
                    .onAppear{
                        inputNumber = number;
                    }
                }
                Spacer()
                
                Button("Submit"){
                    if inputName.isEmpty || inputNumber.isEmpty {
                        showAlert = true;
                        return;
                    }
                    name = inputName;
                    number = inputNumber;
                    if(!hasContact) {
                        hasContact = true
                    }
                    else {
                        isFinished = false;
                    }
                }
                .frame(width: UIScreen.main.bounds.width*0.75, height: 100, alignment: .center)
                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.system(size: 30, weight: .semibold))
                .shadow(color: .black, radius: 5, x: 0, y: 7)
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
        .alert("Error", isPresented: $showAlert, actions: {
            Button("Try Again", role: .cancel, action: {})
        }, message: {
            Text("Please Fill All Fields")
        })
    }
}

// REFERENCE
// Numbers Only in TextField https://stackoverflow.com/questions/58733003/how-to-create-textfield-that-only-accepts-numbers/58736068#58736068

