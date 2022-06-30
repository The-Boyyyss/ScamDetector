import Foundation

/// Struct for Result Model
struct Result: Hashable, Codable{
    /// Array of questions answered in a Result
    let questions: [Question]
    /// Date of when the result was created
    let date: Date
    /// Indicator if the result was a scam or not
    let isAScam: Bool
}

/// Struct for Question Model. Is a tuple (Int, Int)
struct Question: Hashable, Codable {
    /// First number in the tuple
    let idOne: Int
    /// Second number in the tuple
    let idTwo: Int
}

