//
//  QTData.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-29.
//

import Foundation
import UIKit
import CoreGraphics

/// Stores the static data used to generate the Question Tree in a singleton. lets you build nodes from that data using the
/// buildNode Access point
public struct QTData {
        
    /// the dictionary that contains all the data to load the question Tree for the scam detect feature
    private let nodeInfo: [CGFloat: QTNode] = [
        1.1: QTNode(id: (1,1), question: "", howToFix: ""),
        2.1: QTNode(id: (2,1), question: "", howToFix: ""),
        2.2: QTNode(id: (2,2), question: "", howToFix: ""),
        3.1: QTNode(id: (3,1), question: "", howToFix: ""),
        3.2: QTNode(id: (3,2), question: "", howToFix: ""),
        3.3: QTNode(id: (3,3), question: "", howToFix: ""),
        3.4: QTNode(id: (3,4), question: "", howToFix: ""),
        4.1: QTNode(id: (4,1), question: "", howToFix: ""),
        4.2: QTNode(id: (4,2), question: "", howToFix: ""),
        4.3: QTNode(id: (4,3), question: "", howToFix: ""),
        4.4: QTNode(id: (4,4), question: "", howToFix: ""),
        4.5: QTNode(id: (4,5), question: "", howToFix: ""),
        4.6: QTNode(id: (4,6), question: "", howToFix: ""),
        4.7: QTNode(id: (4,7), question: "", howToFix: ""),
        4.8: QTNode(id: (4,8), question: "", howToFix: ""),
        5.1: QTNode(id: (5,1), question: "", howToFix: ""),
        5.2: QTNode(id: (5,2), question: "", howToFix: ""),
        5.3: QTNode(id: (5,3), question: "", howToFix: ""),
        5.4: QTNode(id: (5,4), question: "", howToFix: ""),
        5.5: QTNode(id: (5,5), question: "", howToFix: ""),
        5.6: QTNode(id: (5,6), question: "", howToFix: ""),
        5.7: QTNode(id: (5,7), question: "", howToFix: ""),
        5.8: QTNode(id: (5,8), question: "", howToFix: ""),
        5.9: QTNode(id: (5,9), question: "", howToFix: ""),
        5.101: QTNode(id: (5,10), question: "", howToFix: ""),
        5.11: QTNode(id: (5,11), question: "", howToFix: ""),
        5.12: QTNode(id: (5,12), question: "", howToFix: ""),
        5.13: QTNode(id: (5,13), question: "", howToFix: ""),
        5.14: QTNode(id: (5,14), question: "", howToFix: ""),
        5.15: QTNode(id: (5,15), question: "", howToFix: ""),
        5.16: QTNode(id: (5,16), question: "", howToFix: "")
    ]
    
    /// builds attempts to build a node from the nodeInfo dictionary. Can optionally accept a parent node to be assigned
    func buildNode(nodeID: (Int, Int), parentNode: QTNode? = nil) -> QTNode? {
        // make sure the entry exists
        guard nodeInfo[dataKeyFromId(nodeID: nodeID)] != nil else {
            print("[ERROR] Node entry does not exist in dictionary")
            return nil
        }
        /// converted node id into dictionary key
        let key: CGFloat = dataKeyFromId(nodeID: nodeID)

        // returns a node built with the information in the dictionary
        return QTNode(
            id: nodeInfo[key]!.id,
            question: nodeInfo[key]!.question,
            howToFix: nodeInfo[key]!.howToFix,
            parentNode: parentNode)
    }
    
    /// converts a node Id into a Dictionary key
    private func dataKeyFromId(nodeID: (Int, Int)) -> CGFloat {
        // working value for second half of key
        var secondValue: CGFloat = -1
        
        if (nodeID.1 % 10 == 0) {
            // if the node is divisible by 10 then it needs that extra 1 added or it will
            //read as .1 instead of .10 when converted to the key
            // ex. (5,10) == 5.10 === 5.1 so we make it 5.101 instead
            secondValue = CGFloat(CGFloat(nodeID.1)/100 + 0.001)
        }
        else if (nodeID.1 >= 10) {
            // if the node id is greater than 10 we need to divide by 100 instead of 10
            secondValue = CGFloat(CGFloat(nodeID.1)/100)
        }
        else {
            secondValue = CGFloat(CGFloat(nodeID.1)/10)
        }
        // (3, 3) becomes 3.3 for example and is returned
        return CGFloat( CGFloat(nodeID.0) + secondValue)
    }
}
