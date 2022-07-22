import Foundation
import CoreGraphics

/// Struct model used for Decoding from json file to dictionary of type [String : QTDict]
struct QTDict: Codable {
    
    /// unique idetifier used to represent the node and it's depth in the tree
    let id: [Int]
    /// The question to be given to the user
    let question: String
    /// The steps you can take to fix the problem that occurs if you answer yes to this question
    let howToFix: String
}
