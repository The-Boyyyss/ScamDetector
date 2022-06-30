//
//  ScamDetect.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import SwiftUI
import Foundation

struct ScamDetect:View {
    /// nodes of answers chosen by users
    @State var chosenNodes: [QTNode] = []
    /// whether to display results page
    @State var results: Bool = false
    
    var body: some View {
        VStack {
            if (results == true) {
                ResultPage()
            }
            else {
                ScamDetect_Questions(chosenNodes: $chosenNodes, results: $results)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(GradientBackground().blueGradient)
        .navigationBarHidden(self.results)
        .navigationBarBackButtonHidden(self.results)

    }
}

