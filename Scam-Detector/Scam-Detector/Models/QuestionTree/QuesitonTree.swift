//
//  QuesitonTree.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import Foundation

struct QuestionTree {
    /// The top most node of the tree
    let parentNode: QTNode
    /// The last node you accessed in the tree
    var currentNode: QTNode
    
    /// sets the current node to the node that corrisponds to the answer at the given index or throws an error if that index is out of range
    mutating func answerQuestion(indexOfAnswer: Int) throws {
        guard indexOfAnswer <= 3 else {
            throw QTErrors.NoChildAtIndex
        }
        
        currentNode = currentNode.childrenNodes[indexOfAnswer]
    }
    
    /// returns to the previous question node if not at the parent
    mutating func previousQuestion() {
        guard currentNode.parentNode != nil else {
            return
        }
        
        // note: unwraps QTNode? using ! which will abort the assignment if the parent node is nil
        currentNode = currentNode.parentNode!
    }
}
