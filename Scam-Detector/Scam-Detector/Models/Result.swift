//
//  Result.swift
//  Scam-Detector
//
//  Created by Matt Hilarry Caballero on 2022-06-23.
//

import Foundation

/// Struct for Result Model
struct Result: Identifiable, Codable{
    /// Id of a Result
    let id: Int
    /// Array of questions answered in a Result
    let questions: [Question]
    /// Date of when the result was created
    let date: Date
    /// Indicator if the result was a scam or not
    let isAScam: Bool
}

/// Struct for Question Model. Is a tuple (Int, Int)
struct Question: Codable {
    /// First number in the tuple
    let idOne: Int
    /// Second number in the tuple
    let idTwo: Int
}

