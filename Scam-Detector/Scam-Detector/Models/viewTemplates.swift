//
//  viewTemplates.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-22.
//

import SwiftUI

struct viewTemplates {
    
    static func buildDoubleStripeView() -> some View {
        return ZStack {
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .fill(Color(red: 130 / 255, green: 163 / 255, blue: 161 / 255))
                .frame(width: 300, height: 85, alignment: .bottomLeading)
                .cornerRadius(10)
                .transformEffect(CGAffineTransform(rotationAngle: -35  * (.pi / 180)))
                .position(x: 250, y: 160)
            
            Rectangle()
                .fill(Color(red: 130 / 255, green: 163 / 255, blue: 161 / 255))
                .frame(width: 600, height: 85, alignment: .bottom)
                .transformEffect(CGAffineTransform(rotationAngle: -35 * (.pi / 180)))
                .position(x: 200, y: 530)
        }
    }
}
