//
//  EmergencyContact_Add.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-05-23.
//

import SwiftUI
import Foundation
import Combine

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
            VStack(alignment: .center, spacing: 0){
                HStack(alignment: .top){
                    Image(systemName: "phone.fill")
                        .padding(.trailing, UIScreen.main.bounds.width*0.05)
                        .padding(.top, UIScreen.main.bounds.height*0.02)
                    Text("Emergency Contact")
                }
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: UIScreen.main.bounds.width*0.08, weight: .bold))
                .padding(.bottom, UIScreen.main.bounds.height*0.04)
                .padding(.top, -UIScreen.main.bounds.height*0.05)
                Spacer().frame(height: 50)
                                
                Text("Contact Name")
                    .font(.system(size: 25, weight: .heavy))
                TextField("\(name)", text: $inputName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 20))
                    .onAppear{
                        inputName = name;
                    }
                
                Text("Phone Number")
                    .font(.system(size: 25, weight: .heavy))
                    .padding(.top, UIScreen.main.bounds.height * 0.05)
                TextField("\(number)", text: $inputNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 20))
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
                Spacer().frame(height: 50)
                
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
                .frame(width: 270, height: 80, alignment: .center)
                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.system(size: 30))
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
        .background(GradientBackground().blueGradient)
        .alert("Error", isPresented: $showAlert, actions: {
            Button("Try Again", role: .cancel, action: {})
        }, message: {
            Text("Please Fill All Fields")
        })
    }
}

// REFERENCE
// Numbers Only in TextField https://stackoverflow.com/questions/58733003/how-to-create-textfield-that-only-accepts-numbers/58736068#58736068
