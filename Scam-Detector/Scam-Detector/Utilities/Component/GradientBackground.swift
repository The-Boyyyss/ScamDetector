//
//  GradientBackground.swift
//  Scam-Detector
//
//  Created by Danny Deng on 2022-06-11.
//

import Foundation
import SwiftUI

/// A component that is used for the background for all views.
/// Can be applied by doing .background(GradientBackground().blueGradient)
struct GradientBackground {
    
    let blueGradient = LinearGradient(
        colors: [Color.customLightBlue, Color.customSolidBlue],
        startPoint: .top, endPoint: .bottom)
}
