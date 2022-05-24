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
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .top){
                Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center){
                    HStack(alignment: .top){
                        Image(systemName: "phone.fill")
                        Text("Emergency Contact")
                    }
                    Spacer().frame(height: 300)
                    
                    if emergencyName.isEmpty || emergencyNumber.isEmpty {
                        
                        NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber)){
                            Text("Add Emergency Contact")
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
                            Spacer().frame(height: 10);
                            
                            NavigationLink(destination: EmergencyContact_Add(name: $emergencyName, number: $emergencyNumber)){
                                Text("Update Emergency Contact")
                            }
                        }
                    }
                }
            }
        }
    }
}

//struct EmergencyContact_Previews: PreviewProvider {
//    static var previews: some View {
//        EmergencyContact()
//    }
//}

// REFERENCE
// Make a phone call https://localcoder.org/how-to-create-tappable-url-phone-number-in-swiftui

