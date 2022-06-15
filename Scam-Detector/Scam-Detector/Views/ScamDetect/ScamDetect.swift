//
//  ScamDetect.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import SwiftUI
import Foundation

//class tNode {
//    var parent: tNode? = nil
//    var question: String = "Did you contact them?"
//    var tip: String = "They wont contact you"
//    var answers: [String] = ["Yes", "No"]
//    var children: [tNode] = []
//
//    init() {}
//    init(parent: tNode?, question: String, tip: String, answers: [String]) {
//        self.parent = parent
//        self.question = question
//        self.tip = tip
//        self.answers = answers
//    }
//}

struct scamDetect:View {
    @State var progressColor: Color = .red
    @State var node: QTNode = QuestionTree.instance.parentNode
    @State var reponse: [String] = []
    @State var results: Bool = false
    
    init() {
//        node.children.append(QTNode(parent: node, question: "Q2.1", tip: "T2.1", answers: ["yes", "naw"]))
//        node.children.append(QTNode(parent: node, question: "Q2.2", tip: "T2.2", answers: ["yup", "nooope"]))
    }
    
    var body: some View {
        if (results == true) {
            scamDetect_Results(response: $reponse)
        }
        else {
            scamDetect_Questions(node: $node, response: $reponse, results: $results)
        }
        
    }
}

