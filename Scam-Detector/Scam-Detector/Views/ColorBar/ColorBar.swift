//
//  ColorProgressBar.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-05-21.
//
//  Ref:
//  Color Bar: https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/

import Foundation
import SwiftUI

struct ColorBar: View {
    @Binding var color: Color
    
    var body: some View {
        GeometryReader { shape in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: shape.size.width, height: shape.size.height)
                    .foregroundColor(color)
                    .cornerRadius(15)
                
            }.overlay(RoundedRectangle(cornerRadius: 15).stroke(.black, lineWidth: 2))
        }
    }
}
