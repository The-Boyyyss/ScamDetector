//
//  Result.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-11.
//

import Foundation
import SwiftUI

struct ResultPage: View {
    
    /// a state variable for indicating fix view to be showed if button is clicked
    @State private var showFixView = false
    /// a state variable for indicating help view to be showed if button is clicked
    @State private var showHelpView = false
    /// a state variable for indicating home view to be showed if button is clicked
    @State private var showHomeView = false
    /// a state variable for indicating which content to show after questions are answered
    @State private var badResults: Bool = true
    
    var body: some View {
        VStack() {
            Text("Result").font(.system(size: 42)).bold().frame(width: uSizes.sWidth, height: uSizes.sHeight * 0.1, alignment: .bottom)
                .padding(.bottom, 10)
            
            if (!badResults) {
                VStack() {
                    Text("Looks Good!").font(.system(size: 36)).bold().padding(.top, 30)
                    Text("it's not a scam").font(.system(size: 32))
                    Image("checkMarkImg").resizable().scaledToFit().frame(width: uSizes.sWidth * 0.7, height: uSizes.sHeight * 0.30)
                }
                .frame(width: uSizes.sWidth * 0.80, height: uSizes.sHeight * 0.65, alignment: .top)
                .background(.white)
                .cornerRadius(20.0)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                Spacer()
                
                NavigationLink(destination: homeScreen(), isActive: $showHomeView) {EmptyView()}
                Button("Home") {self.showHomeView = true}.buttonStyle(CustomButton())
            } else {
                VStack() {
                    Group {
                        Text("It's most likely a").font(.system(size: 30)).padding(.top, 25)
                        Text("SCAM").font(.system(size: 35)).bold()
                    }.frame(width: uSizes.sWidth * 0.7 , height: uSizes.sHeight * 0.07, alignment: .center)
                    Image("exclamationMarkImg").resizable().scaledToFit().frame(width: uSizes.sWidth * 0.60, height: uSizes.sHeight * 0.25)
                }
                .frame(width: uSizes.sWidth * 0.80, height: uSizes.sHeight * 0.45, alignment: .top)
                .background(.white)
                .cornerRadius(20.0)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                
                Group {
                    NavigationLink(destination: HowToFix(), isActive: $showFixView) {EmptyView()}
                    Button("How To Fix") {self.showFixView = true}.buttonStyle(CustomButton()).padding(7)
                    
                    NavigationLink(destination: EmergencyContact(), isActive: $showHelpView) {EmptyView()}
                    Button("Get Help") {self.showHelpView = true}.buttonStyle(CustomButton()).padding(7)
                    
                    NavigationLink(destination: homeScreen(), isActive: $showHomeView) {EmptyView()}
                    Button("Home") {self.showHomeView = true}.buttonStyle(CustomButton()).padding(7)
                }.frame(width: uSizes.sWidth * 0.6, height: uSizes.sHeight * 0.045)
            }
            Spacer()
        }.frame(width: uSizes.sWidth, height: uSizes.sHeight, alignment: .top).background(GradientBackground().blueGradient)
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea(.all)
    }
}

// THIS IS ONLY FOR PREVIEW DURING DEVELOPMENT
struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
