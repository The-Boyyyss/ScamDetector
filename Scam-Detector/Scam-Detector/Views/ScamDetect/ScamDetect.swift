//
//  ScamDetect.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import SwiftUI
import Foundation

struct scamDetect:View {
    @State var progressColor: Color = .red
    @State var howtoFix: [String] = []
    @State var results: Bool = false
    
    init() {
    }
    
    var body: some View {
        VStack {
            if (results == true) {
                ResultPage()
            }
            else {
                scamDetect_Questions(howtoFix: $howtoFix, results: $results)
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(GradientBackground().blueGradient)
        .frame(width: uSizes.sWidth, height: uSizes.sHeight)
            
    }
}

