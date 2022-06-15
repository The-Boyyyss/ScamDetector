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
    @State var node: QTNode = QuestionTree.instance.parentNode
    @State var reponse: [String] = []
    @State var results: Bool = false
    
    init() {
    }
    
    var body: some View {
        if (results == true) {
            ResultPage()
        }
        else {
            scamDetect_Questions(node: $node, response: $reponse, results: $results)
        }
        
    }
}

