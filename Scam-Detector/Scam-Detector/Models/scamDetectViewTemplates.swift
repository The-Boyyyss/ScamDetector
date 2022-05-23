//
//  viewTemplates.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-22.
//

import SwiftUI

struct scamDetectViewTemplates {
    
    static func buildDoubleStripeView() -> some View {
        return ZStack {
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .fill(Color(red: 130 / 255, green: 163 / 255, blue: 161 / 255))
                .frame(width: uSizes.sWidth, height: uSizes.sWidth * 0.26, alignment: .bottomLeading)
                .cornerRadius(10)
                .transformEffect(CGAffineTransform(rotationAngle: -35  * (.pi / 180)))
                .position(x: uSizes.sWidth * 0.8, y: uSizes.sHeight * 0.28)
            
            Rectangle()
                .fill(Color(red: 130 / 255, green: 163 / 255, blue: 161 / 255))
                .frame(width: uSizes.sWidth * 2, height: uSizes.sWidth * 0.26, alignment: .bottom)
                .transformEffect(CGAffineTransform(rotationAngle: -35 * (.pi / 180)))
                .position(x: uSizes.sWidth * 0.8, y: uSizes.sHeight * 0.93)
        }
    }
    
}
