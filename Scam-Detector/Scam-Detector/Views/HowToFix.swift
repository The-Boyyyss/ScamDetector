//
//  ResultPopUp.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-22.
//

import Foundation
import SwiftUI

struct HowToFix: View {
    
    var body: some View {
        VStack() {
            Group {
                Text("How To Fix")
                    .font(.system(size: 42))
                    .bold()
                    .padding()
            }.frame(width: uSizes.sWidth, alignment: .leading)
            
            Group() {
                Text(".....")
            }.frame(width: uSizes.sWidth * 0.9, alignment: .leading)
        }.frame(width: uSizes.sWidth, height: uSizes.sHeight, alignment: .top).padding().background(GradientBackground().blueGradient)
    }
}
