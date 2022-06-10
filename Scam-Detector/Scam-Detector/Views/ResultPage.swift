//
//  Result.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-21.
//
//  Ref:
//  Color Bar: https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/

import Foundation
import SwiftUI

struct ResultPage: View {
    
    @State var currentQuestion: Int = 1
    @State var showPopUp: Bool = false
    
    @ViewBuilder
    var body: some View {
        VStack {
            ProgressIndicator(currentQuestion: $currentQuestion).padding()
            
            VStack() {
                Text("<Message Status of the Scam>").padding()
                if currentQuestion == 5 {
                    Button(action: {
                        showPopUp.toggle()
                    }, label: {
                        Text("What to do?")
                    }).sheet(isPresented: $showPopUp, content: { ResultPopUp() })
                        .buttonStyle(CustomButton())
                           
                    Button("Call For Help") {}.buttonStyle(CustomButton())
                    Button("Home") {}.buttonStyle(CustomButton())
                }
                
                else if currentQuestion == 3 {
                    Button("Home") {}.buttonStyle(CustomButton())
                }

                Button("Increase count") {
                    self.currentQuestion += 1
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
            .background(.white)
            .cornerRadius(20.0)
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top).padding().background(Color.customLightGreen)
    }
}

// THIS IS ONLY FOR PREVIEW DURING DEVELOPMENT
struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
