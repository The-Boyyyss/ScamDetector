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
    @State var isTip: Bool = true
    
    var body: some View {
        
        if (isTip) {
            scamDetect_Tips()
        }
        else {
            scamDetect_Questions()
        }
    }
}

