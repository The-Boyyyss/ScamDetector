//
//  Splash.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-16.
//

/*
 This page includes code for splash screen which will be displayed for few seconds after running thhe app.
 */

import SwiftUI

struct SplashScreen: View {

    @State var isActive:Bool = false
    
    var body: some View {
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            VStack {
                if self.isActive {
                        HomeScreen()
                } else {
                    VStack{
                        Image("scam-Detector-logo1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 550, height: 300)
                    }.padding(.bottom, 100)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


// Refrence: https://mobiraft.com/ios/swiftui/how-to-add-splash-screen-in-swiftui/
