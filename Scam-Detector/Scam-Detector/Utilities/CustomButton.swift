//
//  CustomButton.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-25.
//
//  Ref:
//  CustomButton: https://www.hackingwithswift.com/quick-start/swiftui/customizing-button-with-buttonstyle

import Foundation
import SwiftUI

/// A component that is for stylizing the buttons and can be applied through .buttonStyle(CustomButton())
struct CustomButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(
                width: UIScreen.main.bounds.width * 0.60,
                height: UIScreen.main.bounds.height * 0.06,
                alignment: .center)
            .padding()
            .background(Color.customButtonColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.system(size: 25, weight: .bold, design: .default))
            .shadow(color: .gray, radius: 4, x: 0, y: 5)
    }
}
