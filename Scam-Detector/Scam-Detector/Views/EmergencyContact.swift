//
//  EmergencyContact.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-05-23.
//

import SwiftUI

struct EmergencyContact: View {
    @AppStorage(StorageKeys.emergencyName.rawValue) private var emergencyName = "";
    @AppStorage(StorageKeys.emergencyNumber.rawValue) private var emergencyNumber = "";
    
    @State var hasContact: Bool = false;
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center){
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
                    Spacer().frame(height: 100)
                    
                    if emergencyName.isEmpty || emergencyNumber.isEmpty {
                        
                        NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $hasContact), isActive: $hasContact){
                            Button("Add Emergency Contact"){
                                hasContact = true;
                            }
                            .frame(width: 270, height: 80, alignment: .center)
                            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                        }                        
                    }
                    else {
                        VStack(){
                            Button("Call \(emergencyName)"){
                                let tel = "tel://";
                                let formatted = tel + emergencyNumber;
                                guard let call = URL(string: formatted) else { return };
                                UIApplication.shared.open(call);
                            }
                            .frame(width: 270, height: 80, alignment: .center)
                            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                            Spacer().frame(height: 50);
                            
                            NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $hasContact), isActive: $hasContact){
                                Button("Update Emergency Contact"){
                                    hasContact = true;
                                }
                                .frame(width: 270, height: 80, alignment: .center)
                                .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.system(size: 30))
                            }
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
            }
        }
    }
}

// REFERENCE
// Make a phone call https://localcoder.org/how-to-create-tappable-url-phone-number-in-swiftui

