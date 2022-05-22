//
//  ColorProgressBar.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-21.
//
//  Ref:
//  Progress Bar: https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/

import Foundation
import SwiftUI

struct ColorProgressBar: View {
    @Binding var value: CGFloat
    @Binding var color: Color
    
    var body: some View {
        GeometryReader { shape in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: shape.size.width, height: shape.size.height)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                Rectangle().frame(width: min(CGFloat(self.value)*shape.size.width, shape.size.width), height: shape.size.height)
                    .foregroundColor(self.color)
                    .cornerRadius(15)
            }.overlay(RoundedRectangle(cornerRadius: 15).stroke(.black, lineWidth: 4))
        }
    }
}
