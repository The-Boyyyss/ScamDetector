//
//  Result.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-21.
//
//  Ref:
//  Progress Bar: https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/

import Foundation
import SwiftUI

struct ResultPage: View {
    @State var colorBarValue: CGFloat = 0.0
    @State var currentColor: Color = .green
    
    @ViewBuilder
    var body: some View {
        VStack {
            ColorProgressBar(value: $colorBarValue, color: $currentColor).frame(height: 60)
                .padding()
            Spacer()
            
            VStack() {
                Text("Message Status of the Scam").padding()
                
                if colorBarValue >= 1 && currentColor == .red {
                    Button("Button1") {}.padding()
                    Button("Button2") {}.padding()
                    Button("Button3") {}.padding()
                } else if colorBarValue >= 1 && currentColor == .green {
                    Button("Button1") {}.padding()
                }
                
                Button("Increase Progress") {
                    self.colorBarValue += 0.2
                }

                Button("Change to Red") {
                    self.currentColor = .red
                }

                Button("Change to Green") {
                    self.currentColor = .green
                }
            }
            .frame(width: 280, height: 420, alignment: .top)
            .background(Color.customDarkGreen)
            .cornerRadius(20.0)
            .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(.black, lineWidth: 2.0))
            Spacer()
        }.padding().background(Color.customLightGreen)
    }
}
