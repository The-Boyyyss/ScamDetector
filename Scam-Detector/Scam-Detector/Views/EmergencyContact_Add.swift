//
//  EmergencyContact_Add.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-05-23.
//

import SwiftUI
import Combine

struct EmergencyContact_Add: View {
    @Binding var name: String;
    @Binding var number: String;
    
    @State var inputNumber: String = "";
    @State var inputName: String = "";
    
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                HStack(alignment: .top){
                    Image(systemName: "phone.fill")
                    Text("Emergency Contact")
                }
                
                Spacer().frame(height: 300);
                                
                Text("Name: \(name)");
                TextField("Name", text: $inputName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                Text("Number: \(number)")
                TextField("Number", text: $inputNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
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
                
                Button("Submit"){
                    name = inputName;
                    number = inputNumber;
                    EmergencyContact();
                }
            }
        }
    }
}

// REFERENCE
// Numbers only in textfield https://stackoverflow.com/questions/58733003/how-to-create-textfield-that-only-accepts-numbers/58736068#58736068

