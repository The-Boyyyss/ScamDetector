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
            VStack() {
                Text("How To Fix").font(.system(size: 42)).bold().padding()
            }.frame(width: UIScreen.main.bounds.width, alignment: .leading)
            
            VStack() {
                Text("...")
            }.frame(width: UIScreen.main.bounds.width * 0.9, alignment: .leading)
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .top).padding().background(GradientBackground().blueGradient)
    }
}

// THIS IS ONLY FOR PREVIEW DURING DEVELOPMENT
struct ResultHowToFixPreview: PreviewProvider {
    static var previews: some View {
        HowToFix()
    }
}
