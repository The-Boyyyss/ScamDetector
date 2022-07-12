/*
 This page includes code for splash screen which will be displayed for few seconds after running thhe app.
 */

import SwiftUI

struct SplashScreen: View {
    /// Check if splash duration is finished then go to homescreen
    @State var isActive:Bool = false
    /// Saved variable for checking if there is an existing contact in local storage
    @AppStorage(StorageKeys.emergencyExists.rawValue) var hasContact: Bool = false
    
    var body: some View {
        ZStack{
            VStack {
                if self.isActive {
                    if self.hasContact{
                        HomeScreen()
                    }
                   else {
                        EmergencyContact()
                   }
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
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(GradientBackground().blueGradient)
    }
}


// Refrence: https://mobiraft.com/ios/swiftui/how-to-add-splash-screen-in-swiftui/
