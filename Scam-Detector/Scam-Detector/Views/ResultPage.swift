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
    
    @State var currentColor: Color = .green
    @State var showPopUp: Bool = false
    
    @ViewBuilder
    var body: some View {
        VStack {
            ColorBar(color: $currentColor)
                .frame(height: UIScreen.main.bounds.height * 0.1)
                .padding()
            Spacer()
            
            VStack() {
                Text("Message Status of the Scam").padding()
                
                if currentColor == .red {
                    Button(action: {
                        showPopUp.toggle()
                    }, label: {
                        Text("What to do?")
                    }).sheet(isPresented: $showPopUp, content: { ResultPopUp() })
                           
                    Button("Call For Help") {}.padding()
                    Button("Home") {}.padding()
                }
                
                else if currentColor == .green {
                    Button("Home") {}.padding()
                }

                Button("Change to Red") {
                    self.currentColor = .red
                }

                Button("Change to Green") {
                    self.currentColor = .green
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.75, alignment: .top)
            .background(Color.customDarkGreen)
            .cornerRadius(20.0)
            Spacer()
        }.padding().background(Color.customLightGreen)
    }
}
