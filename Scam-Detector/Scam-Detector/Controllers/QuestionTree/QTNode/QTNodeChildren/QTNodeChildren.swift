//
//  QTNodeChildren.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-06-01.
//

import Foundation

/// used to represent a QTNodes child nodes
struct QTNodeChildren {
    /// the node travelled to if the user selects option 1 (Yes)
    var child1: QTNode?
    /// the node travelled to if the user selects option 2 (No)
    var child2: QTNode?
}
