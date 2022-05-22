//
//  QTNode.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import Foundation

/**
 Tree  Node Data Node for storing the questions and accomapnying data that makes up the scam detect feature
 
 - Parameter question: The question to be given to the user
 - Parameter parentNode: The QTNode that led to this question node
 - Parameter howToFix: The steps you can take to fix the problem that occurs if you answer yes to this question
 - Parameter Tips: The Repsonse Tips for each corrisponding answer. Must match the index order of the children nodes (max 3). Ex. index 0 is when a user selects yes, 1 for no.
 - Parameter childrenNodes: Nodes that contain all possible answers to this question (max 3)
*/
class QTNode {
    /// The question to be given to the user
    let question: String
    /// The Repsonse Tips for each corrisponding answer. Must match the index order of the children nodes (max 3). Ex. index 0 is when a user selects yes, 1 for no.
    let tips: [String]
    /// The steps you can take to fix the problem that occurs if you answer yes to this question
    let howToFix: String?
    
    /// The QTNode that led to this question node
    let parentNode: QTNode?
    /// Nodes that contain all possible answers to this question (max 3)
    let childrenNodes: [QTNode]
    
    init(question: String, parentNode: QTNode?, howToFix: String?, Tips: [String] = [], childrenNodes: [QTNode] = []) throws {
        
        // restricts children nodes and tips to 3 or less items each
        guard childrenNodes.count <= 3, Tips.count <= 3 else {
            throw QTErrors.TooManyChildren
        }
        
        self.question = question
        self.howToFix = howToFix
        self.tips = Tips
        self.parentNode = parentNode
        self.childrenNodes = childrenNodes
    }
}
