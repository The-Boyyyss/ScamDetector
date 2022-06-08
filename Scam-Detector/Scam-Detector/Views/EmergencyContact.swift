//
//  EmergencyContact.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-05-23.
//

import SwiftUI

/// Emergency Contact Page View
struct EmergencyContact: View {
    @AppStorage(StorageKeys.emergencyName.rawValue) private var emergencyName = "";
    @AppStorage(StorageKeys.emergencyNumber.rawValue) private var emergencyNumber = "";

    @State var showAddPage: Bool = false;
    
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                VStack(){
                    Text("Emergency")
                    Text("Contact")
                }
                .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                .font(.system(size: UIScreen.main.bounds.width*0.1, weight: .bold))
                .padding(.bottom, UIScreen.main.bounds.height*0.04)
                .padding(.top, -UIScreen.main.bounds.height*0.05)
                Spacer().frame(height: UIScreen.main.bounds.height * 0.17)
                
                if emergencyName.isEmpty || emergencyNumber.isEmpty {
                    
                    NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $showAddPage), isActive: $showAddPage){
                        Button("Add Emergency Contact"){
                            showAddPage = true;
                        }
                        .frame(width: UIScreen.main.bounds.width*0.75, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                        .shadow(color: .black, radius: 5, x: 0, y: 7)
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
                        .frame(width: UIScreen.main.bounds.width*0.75, height: 100, alignment: .center)
                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                        .shadow(color: .black, radius: 5, x: 0, y: 7)

                        Spacer();
                        
                        NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber, isFinished: $showAddPage), isActive: $showAddPage){
                            Button("Update Emergency Contact"){
                                showAddPage = true;
                            }
                            .frame(width: UIScreen.main.bounds.width*0.75, height: 100, alignment: .center)
                            .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                            .shadow(color: .black, radius: 5, x: 0, y: 7)
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
        }
    }
}

// REFERENCE
// Make a Phone Call https://localcoder.org/how-to-create-tappable-url-phone-number-in-swiftui

