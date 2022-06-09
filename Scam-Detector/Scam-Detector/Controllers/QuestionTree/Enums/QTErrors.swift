//
//  QTErrors.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-21.
//

import Foundation

/// an enum of errors that can be thrown in QTNodes
enum QTErrors: Error {
    /// Occurs when you attempt to add more than 3 children nodes or tips to a QTNode
    case TooManyChildren
    /// occurs when you attempt to access a child node at an index that does not exist
    case NoChildAtIndex
}
