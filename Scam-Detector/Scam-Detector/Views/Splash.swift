//
//  Splash.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

import SwiftUI

struct splashScreen: View {

    @State var isActive:Bool = false
    @AppStorage(StorageKeys.emergencyExists.rawValue) var hasContact: Bool = false
    
    var body: some View {
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            VStack {
                if self.isActive {
                    if self.hasContact{
                       homeScreen()
                    }
                   else {
                        EmergencyContact()
                   }
                } else {
                    VStack{
                        Image("scam-Detector-logo1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height*0.3)
                            
                    }.padding(.bottom, 100)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
    
}


// Refrence: https://mobiraft.com/ios/swiftui/how-to-add-splash-screen-in-swiftui/
